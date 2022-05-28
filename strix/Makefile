all: a1 a2 a2-2 b1-1 b1-2a b1-2b b2-1 b2-2 b3-1 b3-2 b4a b4b

test:
	strix -f "G(req0) -> (G (req0 -> F grant0) & G (req1 -> F grant1) & G (!(grant0 & grant1)))" --ins="req0,req1" --outs="grant0,grant1"

a1:
	echo "a1"
	strix -f "true -> G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))" \
	--ins="b" \
	--outs="a,r,i"
a2:
	echo "a2"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

a2-2: 
	echo "a2-2"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G F (a) AND G F (r)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b1-1:
	echo "b1-1"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"


b1-2a:
	echo "b1-2a"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G (b -> X !a)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b1-2b:
	echo "b1-2b"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G (b -> X !a)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b2-1:
	echo "b2-1"
	strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r U (!b) ) )) AND \
		(G ( (!b & a) -> ( a U (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b2-2:
	echo "b2-2"
	strix -f "((G F b) -> (G F NOT b) AND (G F NOT b) -> (G F b)) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r U (!b) ) )) AND \
		(G ( (!b & a) -> ( a U (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b3-1:
	echo "b3-1"
	strix -f "(G NOT (!b & (X b) & (X X b) & (X X X !b)) AND \
				G NOT (!b & (X b) & (X X !b)) AND \
				G NOT (b & (X !b) & (X X !b) & (X X X b)) AND \
				G NOT (b & (X !b) & (X X b))) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a W i) AND G (r -> r W i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r W (!b) ) )) AND \
		(G ( (!b & a) -> ( a W (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b3-2:
	echo "b3-2"
	strix -f "(G NOT (!b & (X b) & (X X !b)) AND \
				G NOT (b & (X !b) & (X X b))) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a W i) AND G (r -> r W i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r W (!b) ) )) AND \
		(G ( (!b & a) -> ( a W (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b4a:
	echo "b4a"
	strix -f "(G NOT (!b & (X b) & (X X !b)) AND \
				G NOT (b & (X !b) & (X X b))) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a W i) AND G (r -> r W i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r W (!b) ) )) AND \
		(G ( (!b & a) -> ( a W (b) ) )) AND \
		(G (b -> (X r | X X r))) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b4b:
	echo "b4b"
	strix -f "(G NOT (!b & (X b) & (X X !b)) AND \
				G NOT (b & (X !b) & (X X b))) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a W i) AND G (r -> r W i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r W (!b) ) )) AND \
		(G ( (!b & a) -> ( a W (b) ) )) AND \
		(G (b -> (X r | X X r))) AND \
		(G (!b -> (X a | X X a))) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"
