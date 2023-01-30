.class public final enum Lverizon/net/sip/SipProfile$Status;
.super Ljava/lang/Enum;
.source "SipProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/SipProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lverizon/net/sip/SipProfile$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lverizon/net/sip/SipProfile$Status;

.field public static final enum FULL:Lverizon/net/sip/SipProfile$Status;

.field public static final enum NO:Lverizon/net/sip/SipProfile$Status;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lverizon/net/sip/SipProfile$Status;

    const-string v1, "NO"

    const/4 v2, 0x0

    const-string v3, "no"

    invoke-direct {v0, v1, v2, v3}, Lverizon/net/sip/SipProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lverizon/net/sip/SipProfile$Status;->NO:Lverizon/net/sip/SipProfile$Status;

    .line 19
    new-instance v0, Lverizon/net/sip/SipProfile$Status;

    const-string v1, "FULL"

    const/4 v3, 0x1

    const-string v4, "full"

    invoke-direct {v0, v1, v3, v4}, Lverizon/net/sip/SipProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lverizon/net/sip/SipProfile$Status;->FULL:Lverizon/net/sip/SipProfile$Status;

    const/4 v1, 0x2

    new-array v1, v1, [Lverizon/net/sip/SipProfile$Status;

    .line 17
    sget-object v4, Lverizon/net/sip/SipProfile$Status;->NO:Lverizon/net/sip/SipProfile$Status;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lverizon/net/sip/SipProfile$Status;->$VALUES:[Lverizon/net/sip/SipProfile$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lverizon/net/sip/SipProfile$Status;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lverizon/net/sip/SipProfile$Status;
    .locals 1

    .line 17
    const-class v0, Lverizon/net/sip/SipProfile$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lverizon/net/sip/SipProfile$Status;

    return-object p0
.end method

.method public static values()[Lverizon/net/sip/SipProfile$Status;
    .locals 1

    .line 17
    sget-object v0, Lverizon/net/sip/SipProfile$Status;->$VALUES:[Lverizon/net/sip/SipProfile$Status;

    invoke-virtual {v0}, [Lverizon/net/sip/SipProfile$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lverizon/net/sip/SipProfile$Status;

    return-object v0
.end method
