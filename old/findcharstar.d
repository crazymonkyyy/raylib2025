#!/bin/env -S dmd -i -run

import std;

enum namespace = "odc.raylib";
enum blacklist = [
    "const(char*)*",
    "Callback =",
];

void main(string[] envArgs) {
    if (envArgs.length == 1) {
        writeln("Usage: app ./raylib.d");
        return;
    }
    auto raylibPath = envArgs[1];
    foreach (line; File(raylibPath).byLineCopy) {
        if (line.startsWith("/")) continue;
        if (!line.canFind("const(char)*")) continue;
        auto isInBlackList = false;
        foreach (item; blacklist) {
            if (line.canFind(item)) {
                isInBlackList = true;
                break;
            }
        }
        if (isInBlackList) continue;

        auto parenIndex = line.countUntil('(');
        if (line[0 .. parenIndex].endsWith("const")) {
            parenIndex += line[parenIndex + 1 .. $].countUntil('(') + 1;
        }
        auto name = line[line[0 .. parenIndex].countUntil(' ') + 1 .. parenIndex];
        auto args = line[parenIndex .. parenIndex + line[parenIndex .. $].countUntil(';')];
        auto input = "(";
        auto argTokens = args[1 .. $ - 1].split(' ');
        foreach (i, token; argTokens) {
            if (i % 2 == 1) {
                input ~= (token[$ - 1] == ',' ? token[0 .. $ - 1] : token);
                if (argTokens[i - 1] == "const(char)*") input ~= ".toStringz()";
                if (i != argTokens.length - 1) input ~= ", ";
            }
        }
        input ~= ")";
        auto target = "auto %s(STRING: string)%s => %s.%s%s;".format(
            name,
            args.replace("const(char)*", "STRING"),
            namespace,
            name,
            input,
        );
        writeln(target);
    }
}
