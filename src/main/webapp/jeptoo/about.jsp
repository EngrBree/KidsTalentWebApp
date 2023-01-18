<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about us</title>
   <!-- <link rel="stylesheet" href="jeptoo/StyleAbout.css">- --> 
    <style >
    *
{
    padding: 0;
    margin: 0;
    font-family: sans-serif;
    background-color: rgb(23, 37, 26);
}

.mvv-container{
    max-width: 90%;
    margin: 50px auto 0;
}
.mvv-container .mvv-block{
    margin-bottom: 50px;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
}
.mvv-container .mvv-block .image{ 
   flex: 0 0 auto;
   width: 400px;
   overflow: hidden;
   line-height: 0;
}
.mvv-container .mvv-block .image img{
    width: 100%;
    border-radius: 5px;
    box-shadow: 0 0 10px 5px rgba(0, 0, 0, .3);
    transition: .3s;
    transform: scale(1);
}
.mvv-container .mvv-block .image:hover img{
    transform: scale(1.05);
   
}
.mvv-container .mvv-block .content
{
    flex: 0 0 auto;
    width: calc(100% - 400px);
    box-sizing: border-box;
    align-self: center;
    color: aliceblue;
}
.mvv-container .mvv-block .content h5
{
    font-weight: 700;
    font-size: 22px;
    color: aliceblue;
    margin-bottom: 20px;
}
.mvv-container .mvv-block .content p
{
    font-size: 15px;
}
@media screen  and (min-width: 1024px) 
{
    .mvv-container .mvv-block:nth-child(odd) .image
    {
        order: 1;
    }
    .mvv-container .mvv-block:nth-child(even) .image
    {
        order: 2;
    }
    
    .mvv-container .mvv-block:nth-child(odd) .content
    {
        order: 2;
        padding-left: 30px;
    }
    .mvv-container .mvv-block:nth-child(even) .content
    {
        order: 1;
        padding-right: 30px;
    }
}
    </style>
</head>
<body>
    <section class="aboutusd">
         <div class="mvv-container">
        <div class="mvv-block">
               <div class="image">
                  <img src="src/images/mission.jpg" alt="">
                </div>
            <div class="content">
                <h5>our mission</h5>
                <p>
                    putting a smile on child face can change the world,
                    maybe not the whole world but atleast there world
                </p>
            </div>
        </div>

        <div class="mvv-block">
            <div class="image">
               <img src="src/vision.jpg" alt="">
             </div>
         <div class="content">
             <h5>our mission</h5>
             <p>
                Our mission is to empower and motivate more parents to 
		identify and help nurture their kids talent.It might look
		 hard but a journey of thousand miles starts with the single step. 
		 It is  good to nurture kids talent because;
		 A nurturing environment with plenty of opportunities and encouragement
		  allows a child's talent to be discovered and cultivated . 
		  As parents, it is important to provide such an environment for 
		  children during their developing years so as to give them the
          best head start and maximize their learning potential.
             </p>
         </div>
     </div>

     <div class="mvv-block">
        <div class="image">
           <img src="src/images/values.jpg" alt="">
         </div>
     <div class="content">
         <h5>our mission</h5>
         <p>
             putting a smile on child face can change the world,
             maybe not the whole world but atleast there world
         </p>
     </div>
 </div>
    </div>
    </section>
   

</body>
</html>