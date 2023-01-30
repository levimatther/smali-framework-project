.class public Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;
.super Ljava/lang/Object;
.source "CequintCallerIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/oem/CequintCallerIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CequintCallerIdContact"
.end annotation


# instance fields
.field public final geoDescription:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->geoDescription:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/oem/CequintCallerIdManager$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
