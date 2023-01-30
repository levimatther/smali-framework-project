.class Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source "TctStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateInfo"
.end annotation


# instance fields
.field active:Z

.field parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

.field state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V
    .locals 0

    .line 327
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->parentStateInfo:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$StateInfo;->state:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 343
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
