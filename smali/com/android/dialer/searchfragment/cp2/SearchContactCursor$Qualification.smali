.class interface abstract annotation Lcom/android/dialer/searchfragment/cp2/SearchContactCursor$Qualification;
.super Ljava/lang/Object;
.source "SearchContactCursor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Qualification"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CURRENT_MORE_QUALIFIED:I = 0x2

.field public static final NEW_NUMBER_IS_MORE_QUALIFIED:I = 0x1

.field public static final NUMBERS_ARE_NOT_DUPLICATES:I
