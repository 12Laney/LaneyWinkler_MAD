package com.example.laney.lab7;

public class GOTHouse {
    private String gotHouse;
    private String gotHouseWeb;
    private String gotHouseDes;

    private void setGOTInfo(Integer thronesHouse){
        switch(thronesHouse){
            case 0: //Baratheon
                gotHouse = "Baratheon";
                gotHouseWeb="https://awoiaf.westeros.org/index.php/House_Baratheon";
                gotHouseDes = "House Baratheon is the principal house in the Stormlands. The sigil of house Baratheon is a crowned black stag on a field of gold. Important members of this house include Robert Baratheon, Stannis Baratheon, and Renly Baratheon.";
                break;
            case 1: //Greyjoy
                gotHouse = "Greyjoy";
                gotHouseWeb="https://awoiaf.westeros.org/index.php/House_Greyjoy";
                gotHouseDes = "House Greyjoy is the principal house of the Iron Islands. The sigil of house Greyjoy is a golden kraken on a black field. Important characters from this house are Theon Greyjoy, Asha Greyjoy, and Euron Greyjoy.";
                break;
            case 2: //Lannister
                gotHouse = "Lannister";
                gotHouseWeb = "https://awoiaf.westeros.org/index.php/House_Lannister";
                gotHouseDes = "House Lannister is the principal house of the westerlands. Their sigil is a golden lion on a field of crimson. Key members of house Lannister include Tyrion Lannister, Jamie Lannister, and Cersei Lannister.";
                break;
            case 3: //Martell
                gotHouse = "Martell";
                gotHouseWeb="https://awoiaf.westeros.org/index.php/House_Martell";
                gotHouseDes = "House Martell is the principal house of Dorne. The sigil of house Martell is a gold spear piercing a red sun on an orange field. key members of the Martell house include Prince Doran Martell, Elia Martell, and Oberyn Martell.";
                break;
            case 4: //Stark
                gotHouse = "Stark";
                gotHouseWeb = "https://awoiaf.westeros.org/index.php/House_Stark";
                gotHouseDes = "House Stark is the principal house of the north. The sigil of house stark is a grey direwolf on a field of white. Important characters of house Stark include Sansa Stark, Eddard Stark, Arya Stark, Brandon Stark, and Jon Snow (kind of)";
                break;
            case 5: //Targaryn
                gotHouse = "Targaryen";
                gotHouseWeb = "https://awoiaf.westeros.org/index.php/House_Targaryen";
                gotHouseDes = "House Targaryen once ruled the Seven Kingdoms, as the kings of the Andals, the Rhoynar, and the First Men, they were the Great House of the Crownlands. The sigil of house Targaryen is of a red three headed dragon on a field of black. Key characters include Daenerys, and Rhaegar.";
                break;
             default:
                 gotHouse = "Game of Thrones";
                 gotHouseWeb = "https://gameofthrones.fandom.com/wiki/Great_House";
                 gotHouseDes = "When you play the game of thrones, you win or you die.";
        }
    }
    public void setGOTHouse(Integer thronesHouse){
        setGOTInfo(thronesHouse);
    }
    public void setGOTHouseURL(Integer thronesHouse){
        setGOTInfo(thronesHouse);
    }
    public String getGOTHouse(){
        return gotHouse;
    }
    public String getGOTHouseURL(){
        return gotHouseWeb;
    }
    public void setgotHouseDes(Integer thronesHouse){
        setGOTInfo(thronesHouse);
    }
    public String getGotHouseDes(){
        return gotHouseDes;
    }
}
