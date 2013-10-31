require "lib/fraccion.rb"

describe Fraccion do

	before :each do
		@f1 = Fraccion.new(4,8)
	end
  
	describe " #almacenamiento de los componentes de la fraccion" do
      
    it "Se almacena correctamente el numerador" do
	
		@f1.num.should eq(1)
	
	end #end it
      
    it "Se almacena correctamente el denominador" do
	
		@f1.den.should eq(2)
	
        end#end it
	
    it "Se llama al metodo para obtener el numerador" do
      
      @f1.num.should eq(1)
      
    end# end it
    
    it "Se llama al metodo para obtener el denominador" do
      
      @f1.den.should eq(2)
      
    end #end it
    
    it "La fraccion debe estar en su forma reducida" do
      
      
      Fraccion.new(6,4).mostrar.should eq("3/2")
      
    end#end it
    
	   
      
  end #end describe
  
	describe " #Mostrar la fraccion" do
	  
	 it "Mostrar en formato n/d" do
	    
	    @f1.mostrar.should eq("1/2")
	    
	  end #end it
	  
	 it "Mostrar en formato punto flotante" do
	    
	    @f1.mostrar_float.should eq(0.5)
	    
	  end #end it
	    
	end #end describe
	
	
	describe " #Operaciones metodos sobre distintos metodos" do
	  
	  it "Se debe comparar si dos fracciones son iguales con == " do
	    
	    (@f1 == Fraccion.new(4,8)).should eq(true)
	    
	    
	  end #end it
	  
	  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
	    
	    @f1 = Fraccion.new(-4,-8)
	    @f1 = @f1.abs
	    @f1 == Fraccion.new(1,2)
	    
	  end #end it
	  
	  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
	  
	    @f1.reciprocal == Fraccion.new(2,1)
	    
	    
	  end #end it
	  
	  it "Se debe calcular el opuesto de una fraccion con el metodo -" do
	    
	    
	    @f1.opuesto == Fraccion.new(-1,2)
	    
	    
	  end #end it
		
	describe " Operaciones aritmeticas " do
	  
	  it "Se debe sumar dos fracciones con el operador + y dar el resultado de forma reducida" do
	  
	 (@f1 + Fraccion.new(3,5)) == Fraccion.new(11,10)
	  
	  
	  end #end it
	  
	  it "Se debe restar dos fracciones con el operador - y dar el resultado de forma reducida" do
	    
	    
	    (@f1 - Fraccion.new(3,5)) == Fraccion.new(-1,10)
	    
	  end #end it
	  
	  it "Se debe multiplicar dos fracciones con el operador * y dar el resultado de forma reducida" do
	    
	    (@f1 * Fraccion.new(3,5)) == Fraccion.new(3,10)
	    
	  end # end it
	  
	  it "Se debe dividir dos fracciones con el operador / y dar el resultado de forma reducida" do
	    
	    (@f1 / Fraccion.new(3,5)) == Fraccion.new(5,6)
	    
	  end # end it
	  
	  it "Se debe calcular el resto de dos fracciones con %" do
	  
	  (@f1 % (Fraccion.new(5,4))) == Fraccion.new(0,1)
	  
	end # end it

	end #end describe
	
	describe " Comparaciones de fracciones " do
	
	  it " Se debe de comprobar si una fraccion es menor que otra" do
	    
	    (@f1 < (Fraccion.new(3,5))).should == true
	    
	  end# end it
	  
	   it " Se debe de comprobar si una fraccion es mayor que otra" do
	    
	    (@f1 > (Fraccion.new(3,5))).should == false
	    
	  end# end it
	  
	   it " Se debe de comprobar si una fraccion es menor o igual que otra" do
	    
	    (@f1 <= (Fraccion.new(1,2))).should == true
	    
	  end# end it
	  
	   it " Se debe de comprobar si una fraccion es mayor igual que otra" do
	    
	    (@f1 >= (Fraccion.new(3,5))).should == false
	    
	  end# end it

	end #end describe
	  
	  
	end # end describe
	
	describe "Operaciones realizadas de forma conjunta" do
	  
	  it "Se debe comprobar que el modulo sea igual a 0/1 " do
		
		@f2 = Fraccion.new(1,3)
		@f3 = Fraccion.new(1,2)

		if ((@f2%@f3) == Fraccion.new(0,1))

			((@f2.opuesto) * @f3).abs == Fraccion.new(1,6)

		else

			((@f2.opuesto) * @f3).abs == Fraccion.new(0,1)

		 end
			    
	  end
	  
	end
	
  
  
end
