//
//  StudentData.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import Foundation

let studenData = [
    StudentModel(id: 0, name: "Abraham Damar Grahita", shortname: "Abraham", birthDay: "28 Februari", domicile: "Bali", residence: "Foresta", role: "Tech", image: "AbrahamDamarGrahita", mentor: 0, sig: [2,3], hobby: [1, 4, 7]),
    StudentModel(id: 1, name: "Alison Becker", shortname: "Alison", birthDay: "28 Juni", domicile: "Jakarta", residence: "Foresta", role: "Tech", image: "Alison Becker", mentor: 1, sig: [2,3], hobby: [1, 4, 7]),
    StudentModel(id: 2, name: "Alvaro Morata", shortname: "Alvaro", birthDay: "2 Mei", domicile: "Bandung", residence: "Foresta", role: "Design", image: "Alvaro Morata", mentor: 2, sig: [3, 4, 1, 2, 5], hobby: [1, 5, 7, 3, 2, 0]),
    StudentModel(id: 3, name: "Andakara Prastawa Dhyaksa", shortname: "Andakara", birthDay: "28 Maret", domicile: "Bekasi", residence: "Foresta", role: "Tech", image: "AndakaraPrastawa Dhyaksa", mentor: 3, sig: [4,5], hobby: [1, 4, 7]),
    StudentModel(id: 4, name: "Andress Iniesta", shortname: "Andress", birthDay: "9 Januari", domicile: "Bali", residence: "Foresta", role: "Design", image: "Andress Iniesta", mentor: 4, sig: [5,0], hobby: [1, 4, 7]),
    StudentModel(id: 5, name: "Anthony Ginting", shortname: "Anthony", birthDay: "10 Maret", domicile: "NTT", residence: "Foresta", role: "Tech", image: "AnthonyGinting", mentor: 5, sig: [0,1], hobby: [1, 4, 7]),
    StudentModel(id: 6, name: "Arhan Pratama", shortname: "Arhan", birthDay: "28 April", domicile: "NTB", residence: "Foresta", role: "Design", image: "ArhanPratama", mentor: 0, sig: [3,4], hobby: [1, 4, 7]),
    StudentModel(id: 7, name: "Arki Dikania Wisnu", shortname: "Arki", birthDay: "8 Juni", domicile: "Papua", residence: "Foresta", role: "Tech Design", image: "ArkiDikaniaWisnu", mentor: 1, sig: [0,2], hobby: [1, 4, 7]),
    StudentModel(id: 8, name: "Calvin Verdonk", shortname: "Verdonk", birthDay: "9 Februari", domicile: "Jawa Timur", residence: "Foresta", role: "Design", image: "CalvinVerdonk", mentor: 2, sig: [4,5], hobby: [1, 4, 7]),
    StudentModel(id: 9, name: "Casemiro", shortname: "Casemiro", birthDay: "28 Agustus", domicile: "Jawa Barat", residence: "Foresta", role: "Tech", image: "Casemiro", mentor: 3, sig: [3,5], hobby: [1, 4, 7]),
    StudentModel(id: 10, name: "Christian Gonzales", shortname: "Gonzales", birthDay: "11 September", domicile: "Bogor", residence: "Foresta", role: "Tech", image: "ChristianGonzales", mentor: 4, sig: [2,5], hobby: [0, 3, 8]),
    StudentModel(id: 11, name: "Cristiano Ronaldo", shortname: "Cristiano", birthDay: "5 Oktober", domicile: "Sumedang", residence: "Foresta", role: "Tech", image: "Cristiano Ronaldo", mentor: 5, sig: [1,4], hobby: [0, 3, 8]),
    StudentModel(id: 12, name: "Daniel Wenas", shortname: "Daniel", birthDay: "18 Desember", domicile: "Palembang", residence: "Foresta", role: "Design", image: "Daniel Wenas", mentor: 0, sig: [3,5], hobby: [0, 3, 8]),
    StudentModel(id: 13, name: "Eliano Reijnders", shortname: "Eliano", birthDay: "28 Februari", domicile: "Makassar", residence: "Foresta", role: "Design", image: "ElianoReijnders", mentor: 1, sig: [0,2], hobby: [0, 3, 8]),
    StudentModel(id: 14, name: "Emil Eudaro", shortname: "Emil", birthDay: "22 Agustus", domicile: "Bali", residence: "Foresta", role: "Tech", image: "EmilEudaro", mentor: 2, sig: [3,5], hobby: [0, 3, 8]),
    StudentModel(id: 15, name: "Erling Halland", shortname: "Erling", birthDay: "28 April", domicile: "Pekalogan", residence: "Foresta", role: "Tech", image: "Erling Halland", mentor: 3, sig: [1,4], hobby: [0, 3, 8]),
    StudentModel(id: 16, name: "Galank Gunawan", shortname: "Galank", birthDay: "3 Juni", domicile: "Cianjur", residence: "Foresta", role: "Design", image: "GalankGunawan", mentor: 4, sig: [2,3], hobby: [0, 3, 8]),
    StudentModel(id: 17, name: "Isco Alcaron", shortname: "Isco", birthDay: "5 Oktober", domicile: "Bogor", residence: "Foresta", role: "Tech", image: "Isco", mentor: 5, sig: [0,1], hobby: [0, 3, 8]),
    StudentModel(id: 18, name: "Jadon Sanco", shortname: "Jadon", birthDay: "6 November", domicile: "Padang", residence: "Foresta", role: "Design", image: "Jadon Sanco", mentor: 0, sig: [1,2], hobby: [0, 3, 8]),
    StudentModel(id: 19, name: "Jay Idzes", shortname: "Jay", birthDay: "4 Desember", domicile: "Lampung", residence: "Foresta", role: "Tech", image: "JayIdzes", mentor: 1, sig: [3,5], hobby: [0, 3, 8]),
    StudentModel(id: 20, name: "Joey Pelupessy", shortname: "Joey", birthDay: "7 Januari", domicile: "Banjarmasin", residence: "Foresta", role: "Tech", image: "JoeyPelupessy", mentor: 2, sig: [4,5], hobby: [2, 5, 6]),
    StudentModel(id: 21, name: "Jonathan Cristie", shortname: "Jonathan", birthDay: "11 Februari", domicile: "Kuta", residence: "Foresta", role: "Tech", image: "JonathanKristie", mentor: 3, sig: [3,4], hobby: [2, 5, 6]),
    StudentModel(id: 22, name: "Justin Hubner", shortname: "Justin", birthDay: "10 Maret", domicile: "Jakarta", residence: "Foresta", role: "Design", image: "Justin Hubner", mentor: 4, sig: [0,2], hobby: [2, 5, 6]),
    StudentModel(id: 23, name: "Kevin Diks", shortname: "Kevin", birthDay: "4 Mei", domicile: "Jakarta", residence: "Foresta", role: "Tech", image: "KevinDiks", mentor: 5, sig: [2,4], hobby: [2, 5, 6]),
    StudentModel(id: 24, name: "Kevin Durant", shortname: "Durant", birthDay: "6 April", domicile: "Cianjur", residence: "Foresta", role: "Design", image: "KevinDurant", mentor: 0, sig: [3,5], hobby: [2, 5, 6]),
    StudentModel(id: 25, name: "Kevin Senjaya", shortname: "Senjaya", birthDay: "18 Juni", domicile: "Sumedang", residence: "Foresta", role: "Tech", image: "KevinSenjaya", mentor: 1, sig: [2,3], hobby: [2, 5, 6]),
    StudentModel(id: 26, name: "Kobe Bryant", shortname: "Kobe", birthDay: "28 Agustus", domicile: "Surabaya", residence: "Foresta", role: "Tech", image: "KobeBryant", mentor: 2, sig: [1,4], hobby: [2, 5, 6]),
    StudentModel(id: 27, name: "Lamine Yamal", shortname: "Lamine", birthDay: "2 Juli", domicile: "Kediri", residence: "Foresta", role: "Design", image: "Lamine Yamal", mentor: 3, sig: [0,5], hobby: [2, 5, 6]),
    StudentModel(id: 28, name: "Lebron James", shortname: "Lebron", birthDay: "5 Oktober", domicile: "Palembang", residence: "Foresta", role: "Tech", image: "LebronJames", mentor: 4, sig: [1,2], hobby: [2, 5, 6]),
    StudentModel(id: 29, name: "Lionel Messi", shortname: "Lionel", birthDay: "16 November", domicile: "Medan", residence: "Foresta", role: "Tech", image: "Lionel Messi", mentor: 5, sig: [2,5], hobby: [2, 5, 6]),
    StudentModel(id: 30, name: "Luka Doncic", shortname: "Luka", birthDay: "21 Maret", domicile: "Sulawesi", residence: "Foresta", role: "Design", image: "LukaDoncic", mentor: 0, sig: [3,4], hobby: [1, 6, 8]),
    StudentModel(id: 31, name: "Maas Hilger", shortname: "Hilger", birthDay: "30 Juli", domicile: "NTB", residence: "Foresta", role: "Tech", image: "MaasHilger", mentor: 1, sig: [4,5], hobby: [1, 6, 8]),
    StudentModel(id: 32, name: "Marcello", shortname: "Marcello", birthDay: "17 Agustus", domicile: "Bali", residence: "Foresta", role: "Design", image: "Marcello", mentor: 2, sig: [1,4], hobby: [1, 6, 8]),
    StudentModel(id: 33, name: "Mesut Ozil", shortname: "Mesut", birthDay: "28 Maret", domicile: "Aceh", residence: "Foresta", role: "Tech", image: "Mesut Ozil", mentor: 3, sig: [1,5], hobby: [1, 6, 8]),
    StudentModel(id: 34, name: "Muhammad Ragil", shortname: "Ragil", birthDay: "19 April", domicile: "Bali", residence: "Foresta", role: "Tech", image: "Muhammad Ragil", mentor: 4, sig: [0,1], hobby: [1, 6, 8]),
    StudentModel(id: 35, name: "Muhammad Ferrari", shortname: "Ferrari", birthDay: "5 Mei", domicile: "Bali", residence: "Foresta", role: "Design", image: "MuhammadFerrari", mentor: 5, sig: [2,3], hobby: [1, 6, 8]),
    StudentModel(id: 36, name: "Rafael Struick", shortname: "Rafael", birthDay: "22 Januari", domicile: "Inggris", residence: "Foresta", role: "Design", image: "Rafael Struick", mentor: 0, sig: [1,4], hobby: [1, 6, 8]),
    StudentModel(id: 37, name: "Ragnar Oratmangoen", shortname: "Ragnar", birthDay: "24 Februari", domicile: "Bali", residence: "Foresta", role: "Design", image: "Ragnar Oratmangoen", mentor: 1, sig: [2,5], hobby: [1, 6, 8]),
    StudentModel(id: 38, name: "Rizki Ridho", shortname: "Rizki", birthDay: "19 Juli", domicile: "Bali", residence: "Foresta", role: "Tech", image: "Rizki Ridho", mentor: 2, sig: [3,4], hobby: [1, 6, 8]),
    StudentModel(id: 39, name: "Roberto Firmino", shortname: "Roberto", birthDay: "7 November", domicile: "Magetan", residence: "Foresta", role: "Tech", image: "Roberto Firmino", mentor: 3, sig: [2,3], hobby: [1, 6, 8]),
    StudentModel(id: 40, name: "Sandy Walsh", shortname: "Sandy", birthDay: "28 Februari", domicile: "Bali", residence: "Foresta", role: "Design", image: "SandyWalsh", mentor: 4, sig: [0,5], hobby: [3, 4, 5]),
    StudentModel(id: 41, name: "Sergio Ramos", shortname: "Sergio", birthDay: "7 Maret", domicile: "Pulo gadung",  residence: "Foresta", role: "Design",image: "Sergio Ramos", mentor: 5, sig: [3,4], hobby: [3, 4, 5]),
    StudentModel(id: 42, name: "Son Hueng Min", shortname: "Son", birthDay: "12 Januari", domicile: "Papua Barat", residence: "Foresta", role: "Design", image: "Son Hueng Min", mentor: 0, sig: [0,3], hobby: [3, 4, 5]),
    StudentModel(id: 43, name: "Stephen Curry", shortname: "Stephen", birthDay: "27 November", domicile: "Kalimantan Barat", residence: "Foresta", role: "Tech",  image: "StepCurry", mentor: 1, sig: [2,3], hobby: [3, 4, 5]),
    StudentModel(id: 44, name: "Taufik Hidayat", shortname: "Taufik", birthDay: "28 Februari", domicile: "Samarinda", residence: "Foresta", role: "Tech", image: "TaufikHidayat", mentor: 2, sig: [2], hobby: [3, 4, 5]),
    StudentModel(id: 45, name: "Toni Kroos", shortname: "Toni", birthDay: "23 September", domicile: "Bengkulu", residence: "Foresta", role: "Tech", image: "Toni Kroos", mentor: 3, sig: [3], hobby: [3, 4, 5]),
    StudentModel(id: 46, name: "Trend Alexandre Arnold", shortname: "Trend", birthDay: "25 Juli", domicile: "Sumatra Barat", residence: "Foresta", role: "Tech", image: "Trend Alexandre Arnold", mentor: 4, sig: [4], hobby: [3, 4, 5]),
    StudentModel(id: 47, name: "Nemanja Vidic", shortname: "Nemanja", birthDay: "2 Februari", domicile: "Gorontalo", residence: "Foresta", role: "Design", image: "Vidic", mentor: 5, sig: [0,5], hobby: [3, 4, 5]),
    StudentModel(id: 48, name: "Wahyu Prasetyo", shortname: "Wahyu", birthDay: "28 Maret", domicile: "Bali", residence: "Foresta", role: "Tech", image: "WahyuPrasetyo", mentor: 0, sig: [0,5], hobby: [3, 4, 5]),
    StudentModel(id: 49, name: "Witan Sulaiman", shortname: "Witan", birthDay: "13 April", domicile: "Surakarta", residence: "Foresta", role: "Design", image: "Witan Sulaiman", mentor: 1, sig: [1,4], hobby: [3, 4, 5])
    
]
