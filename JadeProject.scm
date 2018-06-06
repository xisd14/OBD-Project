/* JADE COMMAND FILE NAME C:\Users\wrzos\Desktop\obd\JadeProject.jcf */
jadeVersionNumber "16.0.02";
schemaDefinition
JadeProject subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.006;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	1045 "Polish (Poland)" schemaDefaultLocale;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:10.929;
libraryDefinitions
typeHeaders
	JadeProject subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2048;
	Cart subclassOf Object highestSubId = 1, highestOrdinal = 7, number = 2054;
	GJadeProject subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2049;
	Item subclassOf Object highestOrdinal = 4, number = 2055;
	Person subclassOf Object abstract, highestOrdinal = 6, number = 2051;
	Customer subclassOf Person highestOrdinal = 3, number = 2053;
	Employee subclassOf Person highestOrdinal = 4, number = 2052;
	Position subclassOf Object highestSubId = 1, highestOrdinal = 3, number = 2056;
	Shop subclassOf Object highestSubId = 4, highestOrdinal = 7, number = 2059;
	SJadeProject subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2050;
	CustomersById subclassOf MemberKeyDictionary loadFactor = 66, number = 2060;
	EmployeesById subclassOf MemberKeyDictionary loadFactor = 66, number = 2062;
	ItemsByName subclassOf MemberKeyDictionary loadFactor = 66, number = 2064;
	Positions subclassOf MemberKeyDictionary loadFactor = 66, number = 2063;
	Employees subclassOf ObjectArray loadFactor = 66, number = 2058;
	Items subclassOf ObjectArray loadFactor = 66, number = 2057;
 
interfaceDefs
membershipDefinitions
	CustomersById of Customer ;
	EmployeesById of Employee ;
	ItemsByName of Item ;
	Positions of Position ;
	Employees of Employee ;
	Items of Item ;
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	JadeProject completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.005;
	referenceDefinitions
		myShop:                        Shop  readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:18:59:07.847;
 
	jadeMethodDefinitions
		setRootObject() updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:07:27.890;
	)
	Cart completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:18:09:53.396;
	attributeDefinitions
		id:                            Integer number = 1, ordinal = 4;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:16:19:50.151;
		totalPrice:                    Decimal[12,2] number = 3, ordinal = 6;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:04:42.192;
		totalWeight:                   Decimal[12,2] number = 2, ordinal = 5;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:04:55.110;
	referenceDefinitions
		items:                         Items  implicitMemberInverse, subId = 1, number = 4, ordinal = 7;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:16:51:43.700;
 
	jadeMethodDefinitions
		addToCart(item: Item) number = 1004;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:51:28.693;
		calculateTotalPrice() updating, protected, number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:53:41.443;
		calculateTotalWeight() updating, protected, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:53:57.781;
		create() updating, number = 1005;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:48:39.611;
		getTotal(pPerson: Person) updating, number = 1003;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:05:13.928;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GJadeProject completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.005;
	)
	Item completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:35:20.444;
	attributeDefinitions
		id:                            Integer number = 4, ordinal = 4;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:23:07.997;
		name:                          String[31] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:12:03.758;
		price:                         Decimal[12,2] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:06:02.301;
		weight:                        Decimal[12,2] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:06:06.728;
 
	jadeMethodDefinitions
		create() updating, number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:48:45.441;
		setOnCreate(
			pName: String; 
			pPrice: Decimal; 
			pWeight: Decimal) updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:05:06:00:05:51.166;
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		createShop() number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:53:20.506;
		remove() number = 1003;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:50:15.177;
		showHowItWorks() number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:54:05.270;
	)
	Person completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:21:54:09.893;
	attributeDefinitions
		age:                           Integer number = 3, ordinal = 3;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:42:51.763;
		discount:                      Integer readonly, number = 5, ordinal = 5;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:37:29.401;
		id:                            Integer number = 4, ordinal = 4;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:47:52.529;
		name:                          String[31] number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:42:40.223;
		surname:                       String[31] number = 2, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:42:45.792;
	referenceDefinitions
		cart:                          Cart  readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:34:35.797;
 
	jadeMethodDefinitions
		canHaveDiscount(): Boolean abstract, number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:36:28.325;
		create() updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:50:10.025;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:27:04.667;
	attributeDefinitions
		login:                         String[31] protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:48:37.969;
		password:                      String[31] protected, number = 2, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:48:53.926;
 
	jadeMethodDefinitions
		canHaveDiscount(): Boolean number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:36:34.880;
		setOnCreate(
			pName: String; 
			pSurname: String; 
			pAge: Integer; 
			pLogin: String; 
			pPassword: String) updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:21:42.867;
	)
	Employee completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:26:59.157;
	referenceDefinitions
		position:                      Position  number = 1, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:17:14:18.449;
 
	jadeMethodDefinitions
		canHaveDiscount(): Boolean number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:36:42.656;
		setOnCreate(
			pName: String; 
			pSurname: String; 
			pAge: Integer; 
			pDiscount: Integer; 
			pPosition: Position) updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:18:49.413;
	)
	Position completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:17:14:27.072;
	attributeDefinitions
		salary:                        Integer number = 2, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:43:20.101;
		title:                         String[31] number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:15:43:27.451;
 
	jadeMethodDefinitions
		setOnCreate(
			pTitle: String; 
			pSalary: Integer) updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:54:32.760;
	)
	Shop completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:18:56:15.349;
	attributeDefinitions
		cartID:                        Integer protected, number = 7, ordinal = 7;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:46:36.466;
		itemID:                        Integer protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:07:59.974;
		personID:                      Integer protected, number = 2, ordinal = 2;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:13:59.136;
	referenceDefinitions
		customers:                     CustomersById  implicitMemberInverse, readonly, subId = 1, number = 3, ordinal = 3;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:55:18.626;
		employees:                     EmployeesById  implicitMemberInverse, readonly, subId = 4, number = 6, ordinal = 6;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:55:23.068;
		items:                         ItemsByName  implicitMemberInverse, readonly, subId = 2, number = 4, ordinal = 4;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:31:56.593;
		positions:                     Positions  implicitMemberInverse, readonly, subId = 3, number = 5, ordinal = 5;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:55:30.013;
 
	jadeMethodDefinitions
		createCustomers() updating, number = 1003;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:18:17.849;
		createEmployees() updating, number = 1006;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:17:05.908;
		createItems() updating, number = 1004;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:43:45.712;
		createPositions() updating, number = 1005;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:16:10.518;
		createShop() updating, number = 1007;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:50:39.183;
		nextCartId(): Integer updating, number = 1008;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:47:30.834;
		nextItemID(): Integer updating, number = 1001;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:22:46:12.812;
		nextPersonID(): Integer updating, number = 1002;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:14:51.390;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SJadeProject completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.006;
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	CustomersById completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:28:49.467;
	)
	EmployeesById completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:46:16.995;
	)
	ItemsByName completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:23:31:38.316;
	)
	Positions completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:19:46:59.681;
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	ObjectArray completeDefinition
	(
	)
	Employees completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:17:11:56.357;
	)
	Items completeDefinition
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:16:41:40.264;
	)
 
memberKeyDefinitions
	CustomersById completeDefinition
	(
		id;
	)
	EmployeesById completeDefinition
	(
		id;
	)
	ItemsByName completeDefinition
	(
		name;
	)
	Positions completeDefinition
	(
		title;
	)
 
inverseDefinitions
databaseDefinitions
JadeProjectDb
	(
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.007;
	databaseFileDefinitions
		"jadeproject" number=51;
		setModifiedTimeStamp "wrzos" "16.0.02" 2018:06:06:14:47:11.007;
	defaultFileDefinition "jadeproject";
	classMapDefinitions
		SJadeProject in "_environ";
		JadeProject in "_usergui";
		GJadeProject in "jadeproject";
		Person in "jadeproject";
		Employee in "jadeproject";
		Customer in "jadeproject";
		Cart in "jadeproject";
		Item in "jadeproject";
		Position in "jadeproject";
		Items in "jadeproject";
		Employees in "jadeproject";
		Shop in "jadeproject";
		CustomersById in "jadeproject";
		EmployeesById in "jadeproject";
		Positions in "jadeproject";
		ItemsByName in "jadeproject";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	JadeProject (
	jadeMethodSources
setRootObject
{
setRootObject() updating;

vars

begin
	self.myShop := Shop.firstInstance();
	//if shop object doesn't exist then it's created
	if self.myShop = null then
		beginTransaction;
		create self.myShop;
		commitTransaction;
	endif;
end;

}

	)
	Cart (
	jadeMethodSources
addToCart
{
addToCart(item : Item);

vars

begin
	beginTransaction;
	items.add(item);
	commitTransaction;
end;

}

calculateTotalPrice
{
calculateTotalPrice() updating, protected;

vars
	item : Item;
begin
	beginTransaction;
	foreach item in items do
	totalPrice := totalPrice + item.price;
	endforeach;
	commitTransaction;
end;

}

calculateTotalWeight
{
calculateTotalWeight() updating, protected;

vars
	item : Item;
begin	
	beginTransaction;
	foreach item in items do
	totalWeight := totalWeight + item.weight;
	endforeach;
	commitTransaction;
end;

}

create
{
create() updating;

vars

begin
	self.id := app.myShop.nextCartId();
end;

}

getTotal
{
getTotal(pPerson : Person) updating;

vars
	item : Item;
	price : Decimal[12,2];
begin
	calculateTotalPrice();
	calculateTotalWeight();
	foreach item in items do
		write item.name & ": weight: " & item.weight.String & "kg: price: " & item.price.String & "$";
	endforeach;
	write "Total weight: " & totalWeight.String & "kg";
	if pPerson.canHaveDiscount then
		write "Discount: " & pPerson.discount.String & "%";
		price := totalPrice * (100 - pPerson.discount) / 100.00;
		write "Total price: " & price.String & "$";
	else 
		write "Total price: " & totalPrice.String & "$";
	endif;
end;

}

	)
	Item (
	jadeMethodSources
create
{
create() updating;

vars

begin
	self.id := app.myShop.nextItemID();
end;

}

setOnCreate
{
setOnCreate(pName: String; pPrice: Decimal; pWeight: Decimal) updating;

vars

begin
self.name := pName;
self.price := pPrice;
self.weight := pWeight; 
end;

}

	)
	JadeScript (
	jadeMethodSources
createShop
{
createShop();

vars

begin
	app.setRootObject();
	app.myShop.createShop();
end;

}

remove
{
remove();

vars

begin

beginTransaction;
Customer.instances.purge();
Employee.instances.purge();
Item.instances.purge();
Position.instances.purge();
Shop.instances.purge();
commitTransaction;
end;


}

showHowItWorks
{
showHowItWorks();

vars
	customer : Customer;
	employee : Employee;
	items : ItemsByName;
	item : Item;
begin
	app.setRootObject();	
	customer := app.myShop.customers[2];
	employee := app.myShop.employees[11];
	items := app.myShop.items;
		
		
	customer.cart.addToCart(items["milk"]);
	customer.cart.addToCart(items["ham"]);
	customer.cart.addToCart(items["cheese"]);
	customer.cart.getTotal(customer);
	
	employee.cart.addToCart(items["milk"]);
	employee.cart.addToCart(items["ham"]);
	employee.cart.addToCart(items["cheese"]);
	employee.cart.getTotal(employee);
	
end;

}

	)
	Person (
	jadeMethodSources
canHaveDiscount
{
canHaveDiscount() : Boolean  abstract;
}

create
{
create() updating;

vars
 cart : Cart;
begin
	self.id := app.myShop.nextPersonID();
	create cart;
	self.cart := cart;
end;

}

	)
	Customer (
	jadeMethodSources
canHaveDiscount
{
canHaveDiscount() :Boolean;

vars

begin
	return false;
end;

}

setOnCreate
{
setOnCreate(pName: String; pSurname: String; pAge:Integer; pLogin: String; pPassword:String) updating;

vars

begin
	self.discount := 0;
	self.name := pName;
	self.surname := pSurname;
	self.age := pAge;
	self.login := pLogin;
	self.password := pPassword;
end;

}

	)
	Employee (
	jadeMethodSources
canHaveDiscount
{
canHaveDiscount(): Boolean ;

vars

begin
	return true;
end;

}

setOnCreate
{
setOnCreate(pName: String; pSurname: String; pAge:Integer; pDiscount: Integer; pPosition: Position) updating;

vars

begin
	self.name := pName;
	self.surname := pSurname;
	self.age := pAge;
	self.discount := pDiscount;
	self.position := pPosition;
end;

}

	)
	Position (
	jadeMethodSources
setOnCreate
{
setOnCreate(pTitle: String; pSalary: Integer) updating;

vars

begin
	self.title := pTitle;
	self.salary := pSalary;
end;

}

	)
	Shop (
	jadeMethodSources
createCustomers
{
createCustomers() updating;

vars
	customer : Customer;begin
	app.setRootObject();
	beginTransaction;
	create customer;
	customer.setOnCreate("Anna","Blue",25,"alog","1234");
	customers.add(customer);
	create customer;
	customer.setOnCreate("John","Smith",62,"login","password");
	customers.add(customer);
	create customer;
	customer.setOnCreate("Kim","Lan",17,"kimlan","kl4321");
	customers.add(customer);
	create customer;
	customer.setOnCreate("Susan","Light",29,"slight","$u$@n");
	customers.add(customer);
	create customer;
	customer.setOnCreate("Carol","Smith",40,"shop","pswd");
	customers.add(customer);
	create customer;
	customer.setOnCreate("Linda","White",17,"lindaW","0123");
	customers.add(customer);
	create customer;
	customer.setOnCreate("John","Lemon",35,"lemon","p1234");
	customers.add(customer);
	create customer;
	customer.setOnCreate("Klara","Lemon",32,"klaralem","psssswd");
	customers.add(customer);
	commitTransaction;
	customer.inspectModal();
end;

}

createEmployees
{
createEmployees() updating;

vars
	employee : Employee;
	position : Position;
	
begin
	app.setRootObject();
	beginTransaction;
	create employee;
	position := self.positions.getAtKey("shop assistant");
	employee.setOnCreate("Lisa","Wing",22,10,position);
	employees.add(employee);
	create employee;
	position := self.positions.getAtKey("manager");
	employee.setOnCreate("Adam","Snow",42,25,position);
	employees.add(employee);
	create employee;
	position := self.positions.getAtKey("cleaner");
	employee.setOnCreate("Barbara","Lang",64,5,position);
	employees.add(employee);
	create employee;
	position := self.positions.getAtKey("stockman");
	employee.setOnCreate("Jacob","Lang",21,5,position);
	employees.add(employee);
	commitTransaction;
	employee.inspectModal();
end;

}

createItems
{
createItems() updating;

vars 
	item : Item;
begin
	app.setRootObject();
	beginTransaction;
	create item;
	item.setOnCreate("milk", 1.99, 1.0);
	items.add(item);
	create item;
	item.setOnCreate("cheese", 3.59, 0.15);
	items.add(item);
	create item;
	item.setOnCreate("ham", 4.99, 0.25);
	items.add(item);
	create item;
	item.setOnCreate("tomato", 2.99, 1.0);
	items.add(item);
	create item;
	item.setOnCreate("cucumber", 0.99, 0.1);
	items.add(item);
	create item;
	item.setOnCreate("water", 1.29, 1.5);
	items.add(item);
	create item;
	item.setOnCreate("cottage cheese", 1.59, 0.2);
	items.add(item);
	create item;
	item.setOnCreate("pork", 20.99, 1.0);
	items.add(item);
	create item;
	item.setOnCreate("chicken", 15.99, 1.0);
	items.add(item);
	commitTransaction;
	item.inspectModal();
end;
}

createPositions
{
createPositions() updating;

vars
	position : Position;
begin
	app.setRootObject();
	beginTransaction;
	create position;
	position.setOnCreate("manager", 6500);
	positions.add(position);
	create position;
	position.setOnCreate("shop assistant", 3500);
	positions.add(position);
	create position;
	position.setOnCreate("cleaner", 1500);
	positions.add(position);
	create position;
	position.setOnCreate("supplier", 3500);
	positions.add(position);
	create position;
	position.setOnCreate("director", 10000);
	positions.add(position);
	create position;
	position.setOnCreate("stockman", 2000);
	positions.add(position);
	commitTransaction;
	position.inspectModal();
end;

}

createShop
{
createShop() updating;

vars

begin
	app.setRootObject();
	createPositions();
	createItems();
	createCustomers();
	createEmployees();
end;

}

nextCartId
{
nextCartId() : Integer updating;

vars

begin
	self.cartID := self.cartID + 1;
	return self.cartID;
end;

}

nextItemID
{
nextItemID() : Integer updating;

vars

begin
	self.itemID := self.itemID + 1;
	return self.itemID;
end;

}

nextPersonID
{
nextPersonID(): Integer updating;

vars

begin
	self.personID := self.personID + 1;
	return self.personID;
end;

}

	)