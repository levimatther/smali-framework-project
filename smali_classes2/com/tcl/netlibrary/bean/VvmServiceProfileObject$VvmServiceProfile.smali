.class public final enum Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;
.super Ljava/lang/Enum;
.source "VvmServiceProfileObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmServiceProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum Language:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum MigrationDate:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum MigrationStatus:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum OMTPVVMOn:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum SMSDirectLink:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum V2E_ON:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum cosname:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum isblocked:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum nut:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

.field public static final enum vvmon:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "cosname"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->cosname:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "isblocked"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->isblocked:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "Language"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->Language:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "MigrationStatus"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->MigrationStatus:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "nut"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->nut:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "SMSDirectLink"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->SMSDirectLink:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "V2E_ON"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->V2E_ON:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "vvmon"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->vvmon:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "OMTPVVMOn"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->OMTPVVMOn:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const-string v1, "MigrationDate"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->MigrationDate:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    .line 2
    sget-object v12, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->cosname:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v12, v1, v2

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->isblocked:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->Language:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->MigrationStatus:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->nut:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->SMSDirectLink:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->V2E_ON:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v8

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->vvmon:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v9

    sget-object v2, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->OMTPVVMOn:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->$VALUES:[Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->$VALUES:[Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    return-object v0
.end method
