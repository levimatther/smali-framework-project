.class public Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;
.super Ljava/lang/Object;
.source "SmartDialPrefix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/smartdial/SmartDialPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberTokens"
.end annotation


# instance fields
.field final countryCode:Ljava/lang/String;

.field final countryCodeOffset:I

.field final nanpCodeOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->countryCode:Ljava/lang/String;

    .line 601
    iput p2, p0, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    .line 602
    iput p3, p0, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    return-void
.end method
