.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$ErM6JGtLl_85O14KRC-kkQclB_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$ErM6JGtLl_85O14KRC-kkQclB_I;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$ErM6JGtLl_85O14KRC-kkQclB_I;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->lambda$new$2$Bubble$ViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
