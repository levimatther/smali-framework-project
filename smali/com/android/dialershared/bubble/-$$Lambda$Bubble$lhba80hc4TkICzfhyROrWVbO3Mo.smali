.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$lhba80hc4TkICzfhyROrWVbO3Mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$lhba80hc4TkICzfhyROrWVbO3Mo;->f$0:Lcom/android/dialershared/bubble/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$lhba80hc4TkICzfhyROrWVbO3Mo;->f$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->lambda$showText$4$Bubble()V

    return-void
.end method
