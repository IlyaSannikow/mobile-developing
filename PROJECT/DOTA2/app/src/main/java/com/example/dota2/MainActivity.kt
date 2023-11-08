package com.example.dota2


import androidx.compose.foundation.Canvas
import androidx.compose.ui.graphics.Color
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Divider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            DotaScreen()
        }
    }
}

@Preview
@Composable
fun DotaScreen(){
    Column(modifier = Modifier
        .background(Color.Black)
        .verticalScroll(rememberScrollState())){
        DotaHeader()
        DotaGenre()
        DotaDescription()
        DotaVideo()
        DotaRating()
        DotaReviews()
        DotaInstallButton()
    }
}


@Composable
fun DotaHeader(){
    Box(modifier = Modifier
        .padding(bottom = 20.dp)
        .height(390.dp)){
        Image(painter = painterResource(id = R.drawable.dota_head),
            contentDescription = null,
            modifier = Modifier.fillMaxWidth(),
            contentScale = ContentScale.Crop)

        Row(verticalAlignment = Alignment.Bottom, modifier = Modifier
            .padding(start = 25.dp)
            .align(Alignment.BottomStart)) {
            Image(painter = painterResource(id = R.drawable.dota_ic),
                contentDescription = null,
                modifier = Modifier
                    .clip(RoundedCornerShape(15.dp))
                    .border(2.7.dp, Color(0xFF45454D), RoundedCornerShape(15.dp))
                    .fillMaxWidth(0.23f), contentScale = ContentScale.Crop)
            Column(Modifier.padding(start = 10.dp, bottom = 5.dp)) {
                Text(text = "DoTA 2",
                    fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
                    fontSize = 23.sp,
                    color = Color.White)
                Row(verticalAlignment = Alignment.CenterVertically){
                    Image(painter = painterResource(id = R.drawable.stars),
                        modifier = Modifier
                            .fillMaxWidth(0.31f),
                        contentDescription = null)
                    Text(text = "70M",Modifier
                        .padding(start = 5.dp),
                        fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
                        color = Color(0xFF45454D),
                        fontSize = 15.sp )
                }
            }
        }
    }
}


@Composable
fun DotaGenre(){
    val genre = listOf("MOBA","MULTIPLAYER","STRATEGY")
    LazyRow(Modifier.padding(start = 20.dp)){
        itemsIndexed(genre) { _, item ->
            Box(modifier = Modifier
                .padding(5.dp)
                .clip(RoundedCornerShape(15.dp))
                .background(Color(0x3c44a9f4))
                .padding(start = 10.dp, end = 10.dp, top = 5.dp, bottom = 5.dp)){
                Text(text = "$item",
                    fontFamily = FontFamily(Font(R.font.monserrat)),
                    color = Color(0xff41a0e7),
                    fontSize = 11.sp)
            }
        }
    }
}


@Composable
fun DotaDescription(){
    Text(text="Dota 2 is a multiplayer online battle arena (MOBA) game which has two teams of five players compete to collectively destroy a large structure defended by the opposing team known as the \"Ancient\", whilst defending their own.",
        modifier = Modifier.padding(start = 25.dp, end = 25.dp, top = 30.dp),
        fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
        color = Color(0xb2eef2fb),
        fontSize = 13.sp
    )
}


@Composable
fun DotaVideo(){
    Row(
        Modifier
            .padding(top = 18.dp)
            .fillMaxWidth()) {
        Box(contentAlignment = Alignment.Center, modifier = Modifier.padding( start = 25.dp)){
            Image(painter = painterResource(id = R.drawable.bg_video_prewiev1),
                contentDescription = null,
                contentScale = ContentScale.Crop,
                modifier = Modifier
                    .fillMaxWidth(0.67f)
                    .clip(RoundedCornerShape(15.dp))
            )
            Canvas(modifier = Modifier
                .size(size = 60.dp)
                .blur(radius = 2.dp)
                .alpha(0.4f)){
                drawCircle(color = Color.White, radius = 64f )
            }
            Image(painter = painterResource(id = R.drawable.triangle),
                contentDescription = null,
                modifier = Modifier
                    .rotate(90F)
                    .fillMaxSize(0.05f))
        }

        Image(painter = painterResource(id = R.drawable.bg_video_prewiev2),
            contentDescription = null,
            modifier = Modifier
                .clip(RoundedCornerShape(15.dp))
                .fillMaxSize()
                .padding(start = 25.dp),
            contentScale = ContentScale.Crop
        )
    }
}

@Composable
fun DotaRating(){
    Column(
        Modifier
            .padding(start = 25.dp, top = 24.dp)
            .fillMaxWidth()) {
        Text(text = "Review & Ratings",
            fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
            color = Color.White,
            fontSize = 18.sp)

        Row(modifier = Modifier.padding(top = 12.dp),
            verticalAlignment = Alignment.Bottom){

            Text(text = "4.9",
                fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
                color = Color.White,
                fontSize = 50.sp)

            Column(modifier = Modifier.padding(start = 10.dp,bottom = 5.dp)) {

                Image(painter = painterResource(id = R.drawable.stars),
                    modifier = Modifier
                        .fillMaxWidth(0.28f)
                        .padding(bottom = 5.dp),
                    contentDescription = null)

                Text(text = "70M Reviews",
                    fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
                    color = Color(0xFFA8ADB7),
                    fontSize = 14.5.sp
                )
            }

        }
    }
}

@Composable
fun DotaReviews(){
    Column(modifier = Modifier.padding(start = 25.dp, top = 30.dp)) {

        Column(modifier = Modifier.padding(bottom = 24.dp)) {

            Row(verticalAlignment = Alignment.Bottom) {

                Image(painter = painterResource(id = R.drawable.avatar_1),
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .clip(RoundedCornerShape(15.dp))
                        .fillMaxWidth(0.13f),
                )

                Column(modifier = Modifier.padding(start = 16.dp,bottom = 7.dp)) {
                    Text(text = "Auguste Conte",
                        color = Color.White,
                        fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                        fontSize = 17.sp,
                        modifier = Modifier.padding(bottom = 7.dp))
                    Text(text = "February 14, 2019",
                        color = Color(0x65ffffff),
                        fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                        fontSize = 14.sp)
                }
            }

            Text(text = "\"Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers.\"",
                color = Color(0xFFA8ADB7),
                lineHeight = 25.sp,
                fontSize = 15.sp,
                fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                modifier = Modifier.padding(top = 16.dp, end = 24.dp))
        }

        Divider(modifier = Modifier.padding(start = 10.dp, end = 35.dp, bottom = 24.dp),
            color = Color(0xFF1A1F29),
            thickness = 1.dp)

        Column {

            Row(verticalAlignment = Alignment.Bottom) {

                Image(painter = painterResource(id = R.drawable.avatar_2),
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .clip(RoundedCornerShape(15.dp))
                        .fillMaxWidth(0.13f),
                )

                Column(modifier = Modifier.padding(start = 16.dp,bottom = 7.dp)) {
                    Text(text = "Jang Marcelino",
                        color = Color.White,
                        fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                        fontSize = 17.sp,
                        modifier = Modifier.padding(bottom = 7.dp))
                    Text(text = "February 14, 2019",
                        color = Color(0x65ffffff),
                        fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                        fontSize = 14.sp)
                }
            }

            Text(text = "\"Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers.\"",
                color = Color(0xFFA8ADB7),
                lineHeight = 25.sp,
                fontSize = 15.sp,
                fontFamily = FontFamily(Font(R.font.sk_modernist_regular)),
                modifier = Modifier.padding(top = 16.dp, end = 24.dp))
        }

    }
}

@Composable
fun DotaInstallButton(){

    Row(horizontalArrangement = Arrangement.Center,
        modifier = Modifier
            .padding(start = 25.dp, end = 25.dp, bottom = 38.dp, top = 38.dp)
            .fillMaxWidth()){
        Button(onClick = {  },
            colors = ButtonDefaults.buttonColors(Color(0xFFF4D144)),
            modifier = Modifier
                .fillMaxWidth(),
            shape = RoundedCornerShape(17)){
            Text("Install",
                fontFamily = FontFamily(Font(R.font.sk_modernist_bold)),
                color = Color.Black,
                fontSize = 21.sp,
                modifier = Modifier
                    .padding(vertical = 20.dp))
        }
    }
}

