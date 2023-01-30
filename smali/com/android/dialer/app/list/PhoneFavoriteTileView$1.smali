.class Lcom/android/dialer/app/list/PhoneFavoriteTileView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/PhoneFavoriteTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 80
    check-cast p1, Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    .line 83
    invoke-static {}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$000()Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1}, Landroid/view/View$DragShadowBuilder;-><init>()V

    const-string v2, "PHONE_FAVORITE_TILE"

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p1, 0x1

    return p1
.end method
