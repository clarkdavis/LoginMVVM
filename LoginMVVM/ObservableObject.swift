//
//  ObservableObject.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/5/24.
//

final class ObservableObject<T> {
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T) -> Void) {
        listener(value)
        self.listener = listener
    }
    
}
