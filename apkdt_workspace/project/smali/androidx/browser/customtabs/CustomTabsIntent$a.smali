.class public final Landroidx/browser/customtabs/CustomTabsIntent$a;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroidx/browser/customtabs/b$a;

.field private c:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    .line 3
    new-instance v0, Landroidx/browser/customtabs/b$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/b$a;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->b:Landroidx/browser/customtabs/b$a;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->f:Z

    return-void
.end method

.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 2
    .param p1    # Landroidx/browser/customtabs/CustomTabsSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    .line 7
    new-instance v0, Landroidx/browser/customtabs/b$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/b$a;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->b:Landroidx/browser/customtabs/b$a;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->f:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$a;

    :cond_0
    return-void
.end method

.method private a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 4
    invoke-static {v0, v1, p1}, Landroidx/core/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_0

    const-string p1, "android.support.customtabs.extra.SESSION_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public a(I)Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->b:Landroidx/browser/customtabs/b$a;

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/b$a;->a(I)Landroidx/browser/customtabs/b$a;

    return-object p0
.end method

.method public a(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 2
    .param p1    # Landroidx/browser/customtabs/CustomTabsSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->c()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->c:Ljava/util/ArrayList;

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.customtabs.customaction.PENDING_INTENT"

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    iput-boolean p1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->f:Z

    return-object p0
.end method

.method public b(Z)Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public b()Landroidx/browser/customtabs/CustomTabsIntent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    iget-boolean v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->f:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->b:Landroidx/browser/customtabs/b$a;

    invoke-virtual {v1}, Landroidx/browser/customtabs/b$a;->a()Landroidx/browser/customtabs/b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/browser/customtabs/b;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->g:Landroid/util/SparseArray;

    const-string v2, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 13
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14
    :cond_3
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public c()Landroidx/browser/customtabs/CustomTabsIntent$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method
