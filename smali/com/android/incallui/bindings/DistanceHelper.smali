.class public interface abstract Lcom/android/incallui/bindings/DistanceHelper;
.super Ljava/lang/Object;
.source "DistanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/bindings/DistanceHelper$Listener;
    }
.end annotation


# static fields
.field public static final DISTANCE_NOT_FOUND:F = -1.0f

.field public static final KILOMETERS_PER_METER:F = 0.001f

.field public static final MILES_PER_METER:F = 6.213712E-4f


# virtual methods
.method public abstract calculateDistance(Landroid/location/Address;)F
.end method

.method public abstract cleanUp()V
.end method
