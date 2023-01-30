.class public final synthetic Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/app/DialtactsActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/app/DialtactsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;->f$0:Lcom/android/dialer/app/DialtactsActivity;

    iput-object p2, p0, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;->f$0:Lcom/android/dialer/app/DialtactsActivity;

    iget-object v1, p0, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/app/DialtactsActivity;->lambda$onActivityResult$1$DialtactsActivity(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
