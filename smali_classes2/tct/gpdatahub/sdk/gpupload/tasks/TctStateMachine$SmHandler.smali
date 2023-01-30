.class Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;
.super Landroid/os/Handler;
.source "TctStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mHaltingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

.field private mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ltct/gpdatahub/sdk/gpupload/tasks/State;",
            "Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I

.field private mTransitionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)V
    .locals 2

    .line 825
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHasQuit:Z

    .line 288
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    .line 297
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    const/4 v0, -0x1

    .line 306
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    .line 315
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHaltingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    .line 318
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mQuittingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 362
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTransitionInProgress:Z

    .line 365
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 826
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    .line 828
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHaltingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    invoke-direct {p0, p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 829
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mQuittingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;-><init>(Landroid/os/Looper;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->setInitialState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    return-void
.end method

.method static synthetic access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Landroid/os/Message;
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/IState;
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    return-void
.end method

.method static synthetic access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHaltingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    return-object p0
.end method

.method static synthetic access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method static synthetic access$1700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    return-object p0
.end method

.method static synthetic access$2000(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    return-object p0
.end method

.method static synthetic access$2100(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)I
    .locals 0

    .line 282
    iget p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    return p0
.end method

.method static synthetic access$2200(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$2300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$2600(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$2700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Z
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->isDbg()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Z)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;
    .locals 0

    .line 282
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    return-object p0
.end method

.method static synthetic access$900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method private final addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
    .locals 3

    .line 768
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 774
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_3

    .line 777
    invoke-direct {p0, p2, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 780
    :cond_3
    :goto_1
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-nez p2, :cond_4

    .line 782
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    invoke-direct {p2, p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V

    .line 783
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_4
    iget-object v0, p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_6

    iget-object v0, p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 789
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "state already added"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 791
    :cond_6
    :goto_2
    iput-object p1, p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 792
    iput-object v1, p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    const/4 p1, 0x0

    .line 793
    iput-boolean p1, p2, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->active:Z

    .line 794
    iget-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addStateInternal: X stateInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 527
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->access$400(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 530
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->access$402(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 533
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->access$502(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    .line 534
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    .line 535
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 536
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->cleanup()V

    .line 537
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 538
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 539
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 540
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 541
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 542
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 550
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 560
    iget-object v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    .line 566
    :cond_3
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 568
    :cond_4
    new-array v0, v2, [Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 569
    new-array v0, v2, [Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 570
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v0, -0x2

    .line 573
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 575
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const-string v1, "completeConstruction: X"

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3

    .line 850
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 853
    :cond_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 854
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 856
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 745
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;
    .locals 3

    .line 752
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_1

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    aget-object v0, v0, v1

    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4

    move v0, p1

    .line 632
    :goto_0
    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    if-ne p1, v1, :cond_0

    .line 635
    iput-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTransitionInProgress:Z

    .line 637
    :cond_0
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 638
    :cond_1
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->enter()V

    .line 639
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_2
    iput-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTransitionInProgress:Z

    return-void
.end method

.method private final invokeExitMethods(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;)V
    .locals 4

    .line 618
    :goto_0
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 620
    aget-object v0, v1, v0

    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 621
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 622
    :cond_0
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->exit()V

    .line 623
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->active:Z

    .line 624
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2

    .line 873
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 654
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 655
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 656
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 657
    :cond_0
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 6

    .line 670
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 671
    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 674
    iget-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 680
    iput v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    .line 681
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 684
    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private performTransitions(Ltct/gpdatahub/sdk/gpupload/tasks/State;Landroid/os/Message;)V
    .locals 9

    .line 441
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v6, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 448
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    move p2, v8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 450
    :goto_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    if-eqz p2, :cond_2

    .line 453
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->add(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 458
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mLogRecords:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->add(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    .line 462
    :cond_2
    :goto_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    if-eqz p1, :cond_5

    .line 468
    :goto_2
    iget-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 475
    :cond_3
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 477
    iput-boolean v8, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTransitionInProgress:Z

    .line 478
    invoke-direct {p0, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->invokeExitMethods(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;)V

    .line 479
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 480
    invoke-direct {p0, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 488
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 490
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    if-eq p1, p2, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 498
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    :cond_5
    if-eqz p1, :cond_7

    .line 506
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mQuittingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_6

    .line 510
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->onQuitting()V

    .line 511
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    .line 512
    :cond_6
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHaltingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_7

    .line 518
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->onHalting()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 5

    .line 585
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 586
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v4}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mQuittingState:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_1

    .line 593
    :cond_1
    :goto_0
    iget-object v1, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 597
    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    .line 602
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 605
    :cond_2
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v4}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 610
    iget-object p1, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private final quit()V
    .locals 2

    .line 861
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 862
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final quitNow()V
    .locals 2

    .line 867
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 868
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private final setDbg(Z)V
    .locals 0

    .line 883
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    return-void
.end method

.method private final setInitialState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V
    .locals 3

    .line 834
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 835
    :cond_0
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 725
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 729
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    .line 730
    :goto_0
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    .line 731
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 732
    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 730
    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 736
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateStackTopIndex:I

    .line 738
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Ltct/gpdatahub/sdk/gpupload/tasks/State;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
    .locals 3

    const/4 v0, 0x0

    .line 707
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    .line 708
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    .line 710
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStack:[Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 711
    iget-object p1, p1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_1

    .line 712
    iget-boolean v0, p1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_0

    .line 714
    :cond_1
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",curStateInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V
    .locals 3

    .line 840
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->access$700(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    check-cast p1, Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 845
    iget-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDestState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 396
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_5

    .line 397
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 401
    :cond_0
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 404
    :cond_1
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    const/4 v0, 0x0

    .line 408
    iget-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v3, :cond_2

    .line 410
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->processMsg(Landroid/os/Message;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    .line 411
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    .line 414
    iput-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v3, 0x0

    .line 415
    invoke-direct {p0, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 420
    :goto_0
    invoke-direct {p0, v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->performTransitions(Ltct/gpdatahub/sdk/gpupload/tasks/State;Landroid/os/Message;)V

    .line 423
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    if-eqz v0, :cond_3

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->log(Ljava/lang/String;)V

    .line 425
    :cond_3
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_5

    .line 426
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->mSm:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 417
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TctStateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method
