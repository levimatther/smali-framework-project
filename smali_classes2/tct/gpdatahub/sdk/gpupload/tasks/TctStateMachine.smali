.class public Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;
.super Ljava/lang/Object;
.source "TctStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;,
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;,
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 909
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 910
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 912
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->initTctStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->initTctStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->initTctStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)Landroid/os/HandlerThread;
    .locals 0

    .line 24
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 24
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;
    .locals 0

    .line 24
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private initTctStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    .line 898
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    .line 899
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;-><init>(Landroid/os/Looper;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method public addLogRec(Ljava/lang/String;)V
    .locals 8

    .line 1156
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1158
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v5

    .line 1159
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2000(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2100(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    .line 1158
    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->add(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    return-void
.end method

.method public final addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V
    .locals 2

    .line 962
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V
    .locals 1

    .line 954
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1139
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1140
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-eqz v1, :cond_0

    .line 1142
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->access$1900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;

    .line 1143
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 1

    .line 1034
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1686
    :goto_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 1687
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getLogRec(I)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1693
    :cond_1
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1695
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 980
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 982
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;
    .locals 1

    .line 990
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 992
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1191
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;
    .locals 1

    .line 1130
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1132
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->get(I)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;

    move-result-object p1

    return-object p1
.end method

.method public final getLogRecCount()I
    .locals 1

    .line 1120
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1122
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->count()I

    move-result v0

    return v0
.end method

.method public final getLogRecMaxSize()I
    .locals 1

    .line 1110
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->access$1800(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;)I

    move-result v0

    return v0
.end method

.method public final getLogRecSize()I
    .locals 1

    .line 1100
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1102
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->size()I

    move-result v0

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1074
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final hasDeferredMessages(I)Z
    .locals 3

    .line 1567
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1570
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1571
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1573
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected final hasDeferredMessages(ILjava/lang/Object;)Z
    .locals 4

    .line 1583
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1586
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1587
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1589
    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected final hasMessages(I)Z
    .locals 1

    .line 1600
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1603
    :cond_0
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public isDbg()Z
    .locals 1

    .line 1645
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1648
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 1612
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_1

    .line 1613
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1615
    :cond_1
    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 1731
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0

    .line 1721
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->addLogRec(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 1740
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 1776
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1786
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    .line 1758
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    .line 1749
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1

    .line 1767
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 1205
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 1220
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2

    .line 1255
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .line 1273
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1292
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1237
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method protected onHalting()V
    .locals 0

    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onQuitting()V
    .locals 0

    return-void
.end method

.method public final quit()V
    .locals 1

    .line 1623
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1626
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2500(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V

    return-void
.end method

.method public final quitNow()V
    .locals 1

    .line 1634
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1637
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2600(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final removeDeferredMessages(I)V
    .locals 2

    .line 1553
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1556
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1557
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1559
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1

    .line 1543
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1546
    :cond_0
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->removeMessages(I)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    .line 1302
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1305
    :cond_0
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    .line 1328
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1331
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    .line 1341
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1344
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1354
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1357
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1318
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 1367
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1370
    :cond_0
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 1

    .line 1460
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1463
    :cond_0
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 1

    .line 1488
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1491
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 1

    .line 1503
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1506
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    .line 1517
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1520
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    .line 1474
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1477
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1

    .line 1531
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1534
    :cond_0
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IIIJ)V
    .locals 1

    .line 1419
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1422
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    .line 1433
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1436
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p5, p6}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IIJ)V
    .locals 1

    .line 1406
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1409
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 1

    .line 1380
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    .line 1393
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1396
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1

    .line 1446
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1449
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 1

    .line 1658
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1661
    :cond_0
    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2800(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Z)V

    return-void
.end method

.method public final setInitialState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V
    .locals 1

    .line 972
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1

    .line 1092
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1

    .line 1083
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1669
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1673
    :cond_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$2900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(null)"

    .line 1704
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :try_start_1
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1707
    invoke-interface {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 1712
    :catch_1
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    return-void
.end method

.method public final transitionToHaltingState()V
    .locals 2

    .line 1021
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 1043
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->mSmHandler:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$1600(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
