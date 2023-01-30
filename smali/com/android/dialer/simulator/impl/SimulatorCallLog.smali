.class final Lcom/android/dialer/simulator/impl/SimulatorCallLog;
.super Ljava/lang/Object;
.source "SimulatorCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;
    }
.end annotation


# static fields
.field private static final SIMPLE_CALL_LOG:[Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    .line 37
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+1-302-6365454"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 38
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v4, ""

    .line 40
    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setPresentation(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 42
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 43
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    aput-object v1, v0, v2

    .line 44
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "1234"

    .line 46
    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setPresentation(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v7, 0x4

    aput-object v1, v0, v7

    .line 48
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 49
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    aput-object v1, v0, v7

    .line 50
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "(425) 739-5600"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    .line 51
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0x8

    aput-object v1, v0, v7

    .line 52
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "+1 (425) 739-5600"

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0x9

    aput-object v1, v0, v7

    .line 53
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "739-5600"

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0xa

    aput-object v1, v0, v7

    .line 54
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "711"

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v8, 0xb

    aput-object v1, v0, v8

    .line 55
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0xc

    aput-object v1, v0, v7

    .line 56
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 57
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+44 (0) 20 7031 3000"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 58
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+1-650-2530000"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0xf

    aput-object v1, v0, v7

    .line 59
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "+1 303-245-0086;123,456"

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0x10

    aput-object v1, v0, v7

    .line 60
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v7, "+1 303-245-0086"

    invoke-virtual {v1, v7}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v7, 0x11

    aput-object v1, v0, v7

    .line 61
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 62
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "650-2530000"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    .line 63
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "2530000"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 64
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+1 404-487-9000"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    .line 65
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+61 2 9374 4001"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    .line 66
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+33 (0)1 42 68 53 00"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    .line 67
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "972-74-746-6245"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    .line 68
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "+971 4 4509500"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v5, 0x19

    aput-object v1, v0, v5

    .line 69
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    .line 70
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v3, "55-31-2128-6800"

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    .line 71
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v2, "611"

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 72
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->builder()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setType(I)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const-string v2, "*86 512-343-5283"

    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/simulator/impl/SimulatorCallLog;->SIMPLE_CALL_LOG:[Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populateCallLog(Landroid/content/Context;)V
    .locals 11

    .line 77
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 82
    sget-object v5, Lcom/android/dialer/simulator/impl/SimulatorCallLog;->SIMPLE_CALL_LOG:[Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 83
    invoke-virtual {v8, v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;

    move-result-object v8

    .line 84
    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 86
    invoke-virtual {v8}, Lcom/android/dialer/simulator/impl/SimulatorCallLog$CallEntry;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 87
    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 84
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "call_log"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 95
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error adding call entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
