.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble$3;

.field public final synthetic f$1:Lcom/android/dialershared/bubble/Bubble$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble$3;Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;->f$0:Lcom/android/dialershared/bubble/Bubble$3;

    iput-object p2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;->f$1:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;->f$0:Lcom/android/dialershared/bubble/Bubble$3;

    iget-object v1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;->f$1:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/Bubble$3;->lambda$onPreDraw$0$Bubble$3(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    return-void
.end method
