.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/CheckableImageButton;

.field public final synthetic f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/CheckableImageButton;Lcom/android/dialershared/bubble/BubbleInfo$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;->f$0:Lcom/android/dialershared/bubble/CheckableImageButton;

    iput-object p2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;->f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;->f$0:Lcom/android/dialershared/bubble/CheckableImageButton;

    iget-object v1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;->f$1:Lcom/android/dialershared/bubble/BubbleInfo$Action;

    invoke-static {v0, v1, p1}, Lcom/android/dialershared/bubble/Bubble;->lambda$configureButton$6(Lcom/android/dialershared/bubble/CheckableImageButton;Lcom/android/dialershared/bubble/BubbleInfo$Action;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
