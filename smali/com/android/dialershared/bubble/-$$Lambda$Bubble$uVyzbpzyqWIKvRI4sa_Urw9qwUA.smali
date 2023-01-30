.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

.field public final synthetic f$3:Landroid/transition/TransitionValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble;Ljava/lang/CharSequence;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$0:Lcom/android/dialershared/bubble/Bubble;

    iput-object p2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$2:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    iput-object p4, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$3:Landroid/transition/TransitionValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$0:Lcom/android/dialershared/bubble/Bubble;

    iget-object v1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$2:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    iget-object v3, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;->f$3:Landroid/transition/TransitionValues;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialershared/bubble/Bubble;->lambda$showText$2$Bubble(Ljava/lang/CharSequence;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V

    return-void
.end method
