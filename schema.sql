-- Created by Christian Tapnio

-- Location_Amenties
CREATE TABLE Location_Amenities 
    (BranchID NUMBER(11,0) NOT NULL, 
    Amenities VARCHAR(25) NOT NULL,
CONSTRAINT LocationAmenities_PK PRIMARY KEY (BranchID, Amenities), 
CONSTRAINT BranchID_FK FOREIGN KEY (BranchID) REFERENCES Location(BranchID)
);

-- Home_Location
CREATE TABLE Home_Location
    (HLBranchID NUMBER(11,0) NOT NULL,
CONSTRAINT HLBranchID_FK FOREIGN KEY (HLBranchID) REFERENCES Location(BranchID)
);

-- Other_Location
CREATE TABLE Other_Location
    (OLBranchID NUMBER(11,0) NOT NULL,
CONSTRAINT OLBranchID_FK FOREIGN KEY (OLBranchID) REFERENCES Location(BranchID)
);

-- Location
CREATE TABLE Location
    (BranchID NUMBER(11,0) NOT NULL,
    BranchName VARCHAR(25,0) NOT NULL, Address VARCHAR(25,0),
    Telephone NUMBER(9,0),
    BranchEmail VARCHAR(25,0), TimesVisitedThisMonth NUMBER(2,0),
CONSTRAINT BranchID_PK PRIMARY KEY (BranchID) );

-- Class
CREATE TABLE Class
    (ClassID Number(11,0) NOT NULL, 
    BranchID Number(11,0) NOT NULL,
    CoachID Number(11,0) NOT NULL,
    SessionID Number(11,0) NOT NULL, 
    ClassName Number(11,0) NOT NULL,
CONSTRAINT ClassID_PK PRIMARY KEY (ClassID),
CONSTRAINT BranchID_FK FOREIGN KEY (BranchID) REFERENCES Location(BranchID),
CONSTRAINT CoachID_FK FOREIGN KEY (CoachID) REFERENCES Coach(CoachID),
CONSTRAINT SessionID_FK FOREIGN KEY (SessionID) REFERENCES Session(SessionID),
);

-- Session
CREATE TABLE Session
    (SessionID NUMBER(11,0) NOT NULL,
    Day VARCHAR(25,0),
    Time TIME,
    Price DECIMAL(19, 4), 
    Room VARCHAR(25,0),
CONSTRAINT SessionID_PK PRIMARY KEY (SessionID) );

-- Coach
CREATE TABLE Coach
    (CoachID NUMBER(11,0) NOT NULL,
    CoachName VARCHAR(25,0) , Level NUMBER(2,0),
    Rating NUMBER(2, 0),
CONSTRAINT CoachID_PK PRIMARY KEY (CoachID) );

-- My_Coach
CREATE TABLE My_Coach
    (MCCoachID NUMBER(11,0) NOT NULL,
CONSTRAINT MCCoachID_FK FOREIGN KEY (MCCoachID) REFERENCES Coach(CoachID)
);

-- Other_Coach
CREATE TABLE Other_Coach
    (OCCoachID NUMBER(11,0) NOT NULL,
CONSTRAINT OCCoachID_FK FOREIGN KEY (OCCoachID) REFERENCES Coach(CoachID)
);

-- Coach_Certificates
CREATE TABLE Coach_Certificates 
    (CoachID NUMBER(11,0) NOT NULL,
    Certificate VARCHAR(25) NOT NULL,
CONSTRAINT CoachCertificates_PK PRIMARY KEY (CoachID, Certificate), CONSTRAINT CoachID_FK FOREIGN KEY (CoachID) REFERENCES Coach(CoachID),
);

-- Review
CREATE TABLE Review
    (ReviewID NUMBER(11,0) NOT NULL,
    CoachID NUMBER(11,0) NOT NULL, Date DATE,
    Communication NUMBER(2,0), Enthusiasm NUMBER(2,0),
    Punctuality NUMBER(2,0),
    Comment VARCHAR(25),
CONSTRAINT ReviewID_PK PRIMARY KEY (ReviewID),
CONSTRAINT CoachID_FK FOREIGN KEY (CoachID) REFERENCES Coach(CoachID)
);

-- References 
CREATE TABLE Reference
    (ReferenceID NUMBER(11,0) NOT NULL,
    CoachID NUMBER(11,0) NOT NULL, ClientName VARCHAR(25),
    PhoneNo NUMBER(9,0), ReferenceEmail VARCHAR(25),
CONSTRAINT ReferenceID_PK PRIMARY KEY (ReferenceID),
CONSTRAINT CoachID_FK FOREIGN KEY (CoachID) REFERENCES Coach(CoachID)
);