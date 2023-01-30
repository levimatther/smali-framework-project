.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;
.super Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
.source "AutoValue_SimulatorCallLog_CallEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private presentation:Ljava/lang/Integer;

.field private timeMillis:Ljava/lang/Long;

.field private type:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->number:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->type:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->presentation:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " presentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->timeMillis:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;

    iget-object v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->type:Ljava/lang/Integer;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->presentation:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->timeMillis:Ljava/lang/Long;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry;-><init>(Ljava/lang/String;IIJLcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$1;)V

    return-object v0

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->number:Ljava/lang/String;

    return-object p0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null number"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPresentation(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    .locals 0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->presentation:Ljava/lang/Integer;

    return-object p0
.end method

.method setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    .locals 0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->timeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorCallLog_CallEntry$Builder;->type:Ljava/lang/Integer;

    return-object p0
.end method
