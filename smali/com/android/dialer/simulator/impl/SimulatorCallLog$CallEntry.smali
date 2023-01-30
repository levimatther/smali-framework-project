.class abstract Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
.super Ljava/lang/Object;
.source "SimulatorCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CallEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    .locals 2

    .line 111
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;

    invoke-direct {v0}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;-><init>()V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->setPresentation(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAsContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getPresentation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "presentation"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method abstract getNumber()Ljava/lang/String;
.end method

.method abstract getPresentation()I
.end method

.method abstract getTimeMillis()J
.end method

.method abstract getType()I
.end method
