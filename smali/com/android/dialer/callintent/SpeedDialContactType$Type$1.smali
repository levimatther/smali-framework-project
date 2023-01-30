.class final Lcom/android/dialer/callintent/SpeedDialContactType$Type$1;
.super Ljava/lang/Object;
.source "SpeedDialContactType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/SpeedDialContactType$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/dialer/callintent/SpeedDialContactType$Type$1;->findValueByNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p1

    return-object p1
.end method
