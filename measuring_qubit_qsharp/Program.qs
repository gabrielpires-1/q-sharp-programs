namespace measuring_qubit_qsharp {

    open Microsoft.Quantum.Intrinsic;
    
    @EntryPoint()
    operation MeasureOneQubit() : Result { // A operação retorna o tipo Result
        // Aloca um qubit, no estado 0 por padrão   
        use q = Qubit();  
        // Aplicamos a porta Hadamard
        // Agora há 50% de chance do qubit estar no estado 0 e 50% no estado 1 
        H(q);
        // Agora nós medimos o qubit na base Z, a função M retorna um tipo Result
        let result = M(q); 
        // We reset the qubit before releasing it.
        if result == One { X(q); }
        // Finally, we return the result of the measurement.
        return result;
    }
}
