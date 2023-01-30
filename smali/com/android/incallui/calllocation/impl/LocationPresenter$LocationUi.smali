.class public interface abstract Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;
.super Ljava/lang/Object;
.source "LocationPresenter.java"

# interfaces
.implements Lcom/android/incallui/baseui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/calllocation/impl/LocationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationUi"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract setAddress(Ljava/lang/String;)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setMap(Landroid/graphics/drawable/Drawable;)V
.end method
