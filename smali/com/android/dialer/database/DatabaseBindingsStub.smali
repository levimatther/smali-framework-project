.class public Lcom/android/dialer/database/DatabaseBindingsStub;
.super Ljava/lang/Object;
.source "DatabaseBindingsStub.java"

# interfaces
.implements Lcom/android/dialer/database/DatabaseBindings;


# instance fields
.field private dialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/android/dialer/database/DatabaseBindingsStub;->dialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    const/16 v1, 0xa

    const-string v2, "dialer.db"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/dialer/database/DatabaseBindingsStub;->dialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/database/DatabaseBindingsStub;->dialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    return-object p1
.end method
