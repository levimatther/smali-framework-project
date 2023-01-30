.class Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteSquareTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_OPEN_CONTACT_CARD:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 93
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 94
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->access$000(Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V

    return-void
.end method
