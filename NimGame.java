package nimgame;
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
public class NimGame extends JFrame implements ActionListener
{
       JButton b3[],b2[],b1[],sub;
       Icon i;
       Label lab;
       int count=0,a,b,c;
      
    NimGame()
    {
       
        
        setLayout(null);
        setSize(800,800);
        setName("NIM GAME");
     
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
    }
    void Gui(int j,int k,int y)
    {
        a=j;
        b=k;
        c=y;
        sub=new JButton("Submit");
        sub.setBounds(1500,900,200,50);
        sub.setFont((new Font("Serif",Font.BOLD+Font.ITALIC,34)));
        sub.setForeground(Color.white);
        sub.setBackground(Color.black);
        add(sub);
        sub.addActionListener(this);
        
         i=new ImageIcon("C:\\Users\\ashish\\Desktop\\Bass_Vertical.png");
        //Set A 
        Label l1=new Label("Set A");
        l1.setBounds(1600,90,200,200);
        l1.setFont((new Font("Serif",Font.BOLD,34)));
        add(l1);
        
        int imgl=50;
        int imgW=200;
        int length=10,width=20;
        //JButton b1[];
       b1 = new JButton[j];
        for(int x=0;x<j;x++)
        {
            b1[x]=new JButton(i);
            
            b1[x].setBounds(length,width,imgl,imgW);
            add(b1[x]);
            length+=90; 
            b1[x].addActionListener(this);
             
        }
        
      //SET B
      Label l2=new Label("Set B");
        l2.setBounds(1600,390,200,200);
        l2.setFont((new Font("Serif",Font.BOLD,34)));
        add(l2);
          
       //JButton b2[];
       b2 = new JButton[k];
       int imgl2=50, imgW2=200, length2=10,width2=320;
        
        for(int w=0;w<k;w++)
        {
            b2[w]=new JButton(i);
            
            b2[w].setBounds(length2,width2,imgl2,imgW2);
            add(b2[w]);
            length2+=90;
            b2[w].addActionListener(this);
             
        }
        //SET C
        Label l3=new Label("Set C");
        l3.setBounds(1600,690,200,200);
        l3.setFont((new Font("Serif",Font.BOLD,34)));
        add(l3);
          
    
       b3 = new JButton[y];
       int imgl3=50, imgW3=200, length3=10,width3=620;
        
        for(int l=0;l<y;l++)
        {
            b3[l]=new JButton(i);
            
            b3[l].setBounds(length3,width3,imgl3,imgW3);
            add(b3[l]);
            length3+=90; 
            b3[l].addActionListener(this);
        }
             lab=new Label();
            lab.setBounds(50,400,500,1000);
             lab.setFont((new Font("Serif",Font.BOLD+Font.ITALIC,34)));
             add(lab);
             
             Label win=new Label(" ",SwingConstants.CENTER);
              lab.setBounds(50,400,500,1000);
             win.setFont((new Font("Serif",Font.BOLD+Font.ITALIC,54)));
             add(win);
             if(count%2==0)
             {
                 lab.setText("Player A Chance");
                 
                 if(a==0&&b==0&&c==0)
                 {
                      //getContentPane().removeAll();
                      lab.setText("Player B Won"); 
                 }
                 
             }
             else if((count%2)!=0)
             {
                 
                 lab.setText("Player B Chance");
                 if(a==0&&b==0&&c==0)
                 {
                    //getContentPane().removeAll();
                     lab.setText("Player A Won");
                 }
              }
             count++;
    }
     Icon ic;
     JButton btest;
    JButton bk=new JButton();
     
     int ct=0;
     int y=0;
     JButton ob[]=new JButton[45];
     String st[],sOb,s;
     
    public void actionPerformed(ActionEvent e)
    {    
         if(e.getActionCommand().equals("Submit"))
         {
             outer:  
            for(int l=0;l<=y-1;l++)
            {
               for(int z=0;z<b3.length;z++)
               {
                    System.out.println(l+" "+z);
                  //sOb.valueOf(ob[l]);
                  if(b3.length>z)
                  {
                 if(ob[l].equals(b3[z]) )
                {
                     System.out.println("Iam IN 3");
                  c=c-ct;
                  getContentPane().removeAll();
                  this.Gui(a,b,c);  
                  break outer ;
                 }
                  }
                  if(b2.length>z)
                 {
                  if(ob[l].equals(b2[z]))
                 {
                  System.out.println("Iam IN 2");
                  b=b-ct;
                  getContentPane().removeAll();
                  this.Gui(a,b,c);  
                  break outer ;
                 }
                  }
                  if(b1.length>z)
                  {
                 if(ob[l].equals(b1[z]) && b1.length>z)
                {
                    System.out.println("Iam IN");
                  a=a-ct;
                  getContentPane().removeAll();
                  this.Gui(a,b,c);  
                  break outer;
                 }
                  }
               
                 else
                 {
                     System.out.println("yes Its Getting");
                 }
                }//Inner Loop ends
            }//Outer Loop Ends
            ct=0;
            y=0;
         }//If statement ends
         else
         {
          
          
         bk=(JButton)e.getSource();
            //s System.out.println(ob[y]);
               //System.out.println(ob[y]);
                //s=String.valueOf(ob[y]);
             // System.out.println(s);
               //st[y]=s;
               
         if(btest!=bk)
         {
         ic=new ImageIcon("C:\\Users\\ashish\\Desktop\\Keychain.png");
         bk.setIcon(ic);
         ct++;
          //lab.setText(String.valueOf(count));
         }
         else
         {  
             bk.setIcon(i);
            //  lab.setText(String.valueOf(count));
            ct--;
         }
         
         y++;
         ob[y-1]=new JButton();
         ob[y-1]=bk;
       //  System.out.println(ob[y-1]);
        } 
    }
   
    public static void main(String[] args) 
   {
       NimGame nm=new NimGame();
     nm.Gui(4,7,11);
    }
    
}
