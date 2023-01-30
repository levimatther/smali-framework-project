.class Lcom/android/dialer/app/list/PhoneFavoriteListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneFavoriteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/PhoneFavoriteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoriteListView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$400(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$400(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$402(Lcom/android/dialer/app/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$500(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$500(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
