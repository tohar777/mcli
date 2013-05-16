package mcli.internal;

typedef Argument =
{
	command:String,
	aliases:Null<Array<String>>,
	description:Null<String>,
	kind:Kind
}

enum Kind
{
	//variable
	Flag;
	VarHash(key:Type, value:Type, ?valueIsArray:Bool);
	Var(t:Type);
	//function
	Function(args:Array<Type>, ?varArgs:Null<Type>);
	SubDispatch;
}

typedef Type = String;