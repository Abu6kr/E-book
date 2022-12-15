//
//  MyBookView.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct MyBookView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background5")
                     .ignoresSafeArea(.all)
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack {
                            Text("Начни читать и делать заметки уже сегодня ")
                                .font(.system(size: 16,weight: .regular))
                                .frame(width: 187)
                                .multilineTextAlignment(.center)
                            Button(action: {}, label: {
                                    VStack {
                                        Text("К каталогу")
                                    }.padding(.all)
                                        .frame(width: 164,height: 48)
                                        .background(Color("Background8"))
                                        .cornerRadius(10)
                                        .foregroundColor(Color("Background7"))
                            })
                          
                        }
                        .padding(.top)
                    }
                    .foregroundColor(Color("Background6"))
                }
                .navigationBarTitle("Мои заметки",displayMode: .inline)
                .navigationBarItems(leading: VStack {
                    Image(systemName: "chevron.left")
                    
            })
          }
        }
    }
}

struct MyBookView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookView()
    }
}












//import CoreData
//
//struct ContentView22: View {
//
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(entity: Order.entity(), sortDescriptors: [], predicate: NSPredicate(format: "status != %@", Status.completed.rawValue))
//
//    var orders: FetchedResults<Order>
//
//    @State var showOrderSheet = false
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(orders) { order in
//                    HStack {
//                        VStack(alignment: .leading) {
//                            Text("\(order.pizzaType) - \(order.numberOfSlices) slices")
//                                .font(.headline)
//                            Text("Table \(order.tableNumber)")
//                                .font(.subheadline)
//                        }
//                        Spacer()
//                        Button(action: {
//                            updateOrder(order: order)
//                        }) {
//                            Text(order.orderStatus == .pending ? "Prepare" : "Complete")
//                                .foregroundColor(.blue)
//                        }
//                    }
//                        .frame(height: 50)
//                }
//                    .onDelete { indexSet in
//                        for index in indexSet {
//                            viewContext.delete(orders[index])
//                        }
//                        do {
//                            try viewContext.save()
//                        } catch {
//                            print(error.localizedDescription)
//                        }
//                    }
//            }
//                .listStyle(PlainListStyle())
//                .navigationTitle("My Orders")
//                .navigationBarItems(trailing: Button(action: {
//                    showOrderSheet = true
//                }, label: {
//                    Image(systemName: "plus.circle")
//                        .imageScale(.large)
//                }))
//                .sheet(isPresented: $showOrderSheet) {
//                    OrderSheet()
//                }
//        }
//    }
//
//    func updateOrder(order: Order) {
//        let newStatus = order.orderStatus == .pending ? Status.preparing : .completed
//        viewContext.performAndWait {
//            order.orderStatus = newStatus
//            try? viewContext.save()
//        }
//    }
//}
//
//struct ContentView22_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView22().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
//
//
//struct OrderSheet: View {
//
//    let pizzaTypes = ["Pizza Margherita", "Greek Pizza", "Pizza Supreme", "Pizza California", "New York Pizza"]
//
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @Environment (\.presentationMode) var presentationMode
//
//    @State var selectedPizzaIndex = 1
//    @State var numberOfSlices = 1
//    @State var tableNumber = ""
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Pizza Details")) {
//                    Picker(selection: $selectedPizzaIndex, label: Text("Pizza Type")) {
//                        ForEach(0 ..< pizzaTypes.count) {
//                                Text(self.pizzaTypes[$0]).tag($0)
//                        }
//                    }
//
//                    Stepper("\(numberOfSlices) Slices", value: $numberOfSlices, in: 1...12)
//                }
//
//                Section(header: Text("Table")) {
//                    TextField("Table Number", text: $tableNumber)
//                        .keyboardType(.numberPad)
//
//                }
//
//                Button(action: {
//                    guard self.tableNumber != "" else {return}
//                    let newOrder = Order(context: viewContext)
//                    newOrder.pizzaType = self.pizzaTypes[self.selectedPizzaIndex]
//                    newOrder.orderStatus = .pending
//                    newOrder.tableNumber = self.tableNumber
//                    newOrder.numberOfSlices = Int16(self.numberOfSlices)
//                    newOrder.id = UUID()
//                    do {
//                        try viewContext.save()
//                        print("Order saved.")
//                        presentationMode.wrappedValue.dismiss()
//                    } catch {
//                        print(error.localizedDescription)
//                    }
//                }) {
//                    Text("Add Order")
//                }
//            }
//                .navigationTitle("Add Order")
//        }
//    }
//}
//
//struct OrderSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderSheet()
//    }
//}
//
//
//
//struct PersistenceController {
//    static let shared = PersistenceController()
//
//    static var preview: PersistenceController = {
//        let result = PersistenceController(inMemory: true)
//        let viewContext = result.container.viewContext
//        for _ in 0..<10 {
//            let newItem = Order(context: viewContext)
//            newItem.status = "pending"
//            newItem.id = UUID()
//            newItem.tableNumber = "12"
//            newItem.pizzaType = "Margherita"
//            newItem.numberOfSlices = 4
//        }
//        do {
//            try viewContext.save()
//        } catch {
//            // Replace this implementation with code to handle the error appropriately.
//            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            let nsError = error as NSError
//            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//        }
//        return result
//    }()
//
//    let container: NSPersistentContainer
//
//    init(inMemory: Bool = false) {
//        container = NSPersistentContainer(name: "PizzaRestaurant")
//        if inMemory {
//            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
//        }
//        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//            if let error = error as NSError? {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//
//                /*
//                Typical reasons for an error here include:
//                * The parent directory does not exist, cannot be created, or disallows writing.
//                * The persistent store is not accessible, due to permissions or data protection when the device is locked.
//                * The device is out of space.
//                * The store could not be migrated to the current model version.
//                Check the error message to determine what the actual problem was.
//                */
//                fatalError("Unresolved error \(error), \(error.userInfo)")
//            }
//        })
//    }
//}
