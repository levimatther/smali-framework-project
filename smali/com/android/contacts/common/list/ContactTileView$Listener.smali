.class public interface abstract Lcom/android/contacts/common/list/ContactTileView$Listener;
.super Ljava/lang/Object;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallNumberDirectly(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V
.end method

.method public abstract onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;Lcom/android/dialer/callintent/CallSpecificAppData;)V
.end method
