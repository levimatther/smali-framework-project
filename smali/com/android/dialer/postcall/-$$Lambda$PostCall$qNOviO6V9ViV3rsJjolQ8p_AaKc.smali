.class public final synthetic Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/dialer/postcall/PostCall;->lambda$promptUserToViewSentMessage$1(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
