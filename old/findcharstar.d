import std;
enum charstar="const(char)*";
void main(){
	foreach(s;File("raylib/package.d").byLineCopy){
		if(s.canFind(charstar)){
			if(s.canFind("Callback =")){
				continue;
			}
			auto space=s.countUntil(' ');
			auto semi=s.countUntil(';');
			auto parn=s[space..$].countUntil('(');
			string func=s[space+1..parn+space];
			//func.writeln;
			string[] args=s[parn+space+1..semi-1].split(",").map!strip.array;
			//args.writeln;
			string header="auto "~func~"(STRING:string)(";
			string body_="=>raylib."~func~'(';
			foreach(a;args){
				auto space2=a.countUntil(' ');
				if(space2==-1){continue;}
				if(a.canFind(charstar)){
					header~="STRING";
					header~=a[space2..$];
					body_~=a[space2..$]~".toStringz";
				} else {
					header~=a;
					body_~=a[space2..$];
				}
				header~=",";
				body_~=",";
			}
			header~=")";
			body_~=");";
			writeln("//",s);
			writeln("//",func,args);
			writeln(header,body_);
}}}
