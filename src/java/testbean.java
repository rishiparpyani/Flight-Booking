package test;
public class testbean
{
    int n1,n2,totalcost;
    String destination;
    
    public void setNum1(int n1)
    {
        this.n1=n1;
    }
  
    public int getNum1()
    {
        return n1;
    }
    
    public void setNum2(int n2)
    {
        this.n2=n2;
    }
  
    public int getNum2()
    {
        return n2;
    }
    
  
    public void setDestination(String destination){
        this.destination=destination;
    }
    
    public String getDestination()
    {
        return destination;
    }
 
  public void setTotalcost(int totalcost){
      this.totalcost=totalcost;
  }
  public int getTotalcost(){
        switch(destination){
            case "Greece":
                this.totalcost=this.n1*1000+this.n2*5000;
                break;
            case "Turkey":
                this.totalcost=this.n1*5000+this.n2*2500;
                break;
            case "Singapore":
                this.totalcost=this.n1*10000+this.n2*5000;
                break;
            case "Bombay":
                this.totalcost=this.n1*6000+this.n2*3000;
                break;
            default:
                throw new RuntimeException("Destination Invalid!");
        }
        return totalcost;
        
    }
  }