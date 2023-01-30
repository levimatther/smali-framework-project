.class abstract Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.super Ljava/lang/Object;
.source "SimulatorCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract build()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
.end method

.method abstract setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.end method

.method abstract setPresentation(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.end method

.method abstract setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.end method

.method abstract setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.end method
