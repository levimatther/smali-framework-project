.class public abstract Lcom/android/contacts/common/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field private static sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    .line 37
    :cond_0
    sget-object p0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    return-object p0
.end method


# virtual methods
.method public abstract addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract checkFilterValidity(Z)V
.end method

.method public abstract getFilter()Lcom/android/contacts/common/list/ContactListFilter;
.end method

.method public abstract removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract selectCustomFilter()V
.end method

.method public abstract setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
.end method
