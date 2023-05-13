package com.xyz.bd.webmaster.Utility;


import com.xyz.bd.webmaster.models.common.DTOs.DTOStatus;
import com.xyz.bd.webmaster.models.common.ResponseModel.ResponseHeader;

public class Constant {
    public static ResponseHeader generalSuccess= new ResponseHeader(0, "Operations Success") ;
    public static ResponseHeader generalFailed= new ResponseHeader(1, "Operations Failed") ;
    public static String applicationName= "DSC_MS";

    public  static DTOStatus srOpenStatus= new DTOStatus(1,"Open");
    public  static DTOStatus srInProgressStatus= new DTOStatus(2,"In Progress");
    public  static DTOStatus srCancelledStatus= new DTOStatus(3,"Cancelled");
    public  static DTOStatus srCompletedStatus= new DTOStatus(4,"Completed");

    public  static DTOStatus srActionCompleted= new DTOStatus(1,"Completed");
    public  static DTOStatus srActionCancelled= new DTOStatus(2,"Cancelled");
    public  static DTOStatus srActionForward= new DTOStatus(3,"Forward");
    public  static DTOStatus srActionNote= new DTOStatus(4,"Note");

    //Notification
    public static String notificationEmail="EMAIL";
    public static String notificationSMS="SMS";
    public static String smsSenderName= "PEET";

    // Reset Type
    public static String resetTypeForce="Force";
    public static String resetTypeSelf="Self";

}
