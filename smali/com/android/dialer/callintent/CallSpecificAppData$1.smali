.class final Lcom/android/dialer/callintent/CallSpecificAppData$1;
.super Ljava/lang/Object;
.source "CallSpecificAppData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/CallSpecificAppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p1

    if-nez p1, :cond_0

    .line 133
    sget-object p1, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->UNDEFINED:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData$1;->convert(Ljava/lang/Integer;)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p1

    return-object p1
.end method
