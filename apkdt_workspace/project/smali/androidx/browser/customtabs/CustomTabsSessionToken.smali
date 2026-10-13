.class public Landroidx/browser/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    }
.end annotation


# instance fields
.field final a:Landroid/support/customtabs/ICustomTabsCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/support/customtabs/ICustomTabsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CustomTabsSessionToken must have either a session id or a callback (or both)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:Landroid/support/customtabs/ICustomTabsCallback;

    .line 4
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    .line 5
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:Landroid/support/customtabs/ICustomTabsCallback;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/browser/customtabs/CustomTabsSessionToken$a;

    invoke-direct {p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken$a;-><init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    :goto_1
    return-void
.end method

.method private c()Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:Landroid/support/customtabs/ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomTabSessionToken must have valid binder or pending session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:Landroid/support/customtabs/ICustomTabsCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 3
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_4
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->c()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->c()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->c()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
