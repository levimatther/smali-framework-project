.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;
.super Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
.source "AutoValue_SimulatorCallLog_CallEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;
    }
.end annotation


# instance fields
.field private final number:Ljava/lang/String;

.field private final presentation:I

.field private final timeMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->number:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->type:I

    .line 24
    iput p3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->presentation:I

    .line 25
    iput-wide p4, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->timeMillis:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIJLcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;-><init>(Ljava/lang/String;IIJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 65
    check-cast p1, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;

    .line 66
    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->type:I

    .line 67
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getType()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->presentation:I

    .line 68
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getPresentation()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->timeMillis:J

    .line 69
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getNumber()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->number:Ljava/lang/String;

    return-object v0
.end method

.method getPresentation()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->presentation:I

    return v0
.end method

.method getTimeMillis()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->timeMillis:J

    return-wide v0
.end method

.method getType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 80
    iget v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->type:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 82
    iget v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->presentation:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 84
    iget-wide v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->timeMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallEntry{number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->presentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
