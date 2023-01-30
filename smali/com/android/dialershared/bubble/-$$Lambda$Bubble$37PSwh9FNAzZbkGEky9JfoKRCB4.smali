.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble;

.field public final synthetic f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble;Lcom/android/dialershared/bubble/BubbleInfo$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;->f$0:Lcom/android/dialershared/bubble/Bubble;

    iput-object p2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;->f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;->f$0:Lcom/android/dialershared/bubble/Bubble;

    iget-object v1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;->f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialershared/bubble/Bubble;->lambda$configureButton$7$Bubble(Lcom/android/dialershared/bubble/BubbleInfo$Action;Landroid/view/View;)V

    return-void
.end method
