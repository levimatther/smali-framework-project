.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    iput-object p2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->lambda$new$3$Bubble$ViewHolder(Landroid/content/Context;)V

    return-void
.end method
