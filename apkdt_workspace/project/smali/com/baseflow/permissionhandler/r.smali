.class final Lcom/baseflow/permissionhandler/r;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/r$e;,
        Lcom/baseflow/permissionhandler/r$b;,
        Lcom/baseflow/permissionhandler/r$g;,
        Lcom/baseflow/permissionhandler/r$c;,
        Lcom/baseflow/permissionhandler/r$f;,
        Lcom/baseflow/permissionhandler/r$d;,
        Lcom/baseflow/permissionhandler/r$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/r;->a:Z

    return-void
.end method

.method private a(ILandroid/content/Context;Landroid/app/Activity;)I
    .locals 9
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 33
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/r;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 34
    :cond_0
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/s;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No android specific permissions needed for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_2

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions found in manifest for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v3

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_4

    const/16 v7, 0xf

    if-ne p1, v7, :cond_7

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "power"

    .line 41
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 42
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v4, :cond_6

    if-eqz p2, :cond_5

    .line 43
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v5

    :cond_6
    const/4 p1, 0x2

    return p1

    .line 44
    :cond_7
    invoke-static {p2, v6}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    .line 45
    invoke-static {p2, v6}, Lcom/baseflow/permissionhandler/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    .line 46
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_9

    .line 47
    invoke-static {p3, v6}, Lcom/baseflow/permissionhandler/s;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    return p1

    :cond_9
    return v5

    :cond_a
    if-eqz v7, :cond_4

    return v5

    :cond_b
    return v1
.end method

.method private a(Landroid/content/Context;)I
    .locals 0

    .line 56
    invoke-static {p1}, Landroidx/core/app/j;->a(Landroid/content/Context;)Landroidx/core/app/j;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/core/app/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(ILandroid/app/Activity;Lcom/baseflow/permissionhandler/r$g;Lcom/baseflow/permissionhandler/o;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p1, "PermissionHandler.PermissionManager"

    const-string p2, "Unable to detect current Android Activity."

    .line 48
    invoke-interface {p4, p1, p2}, Lcom/baseflow/permissionhandler/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/s;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No android specific permissions needed for: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    invoke-interface {p3, v0}, Lcom/baseflow/permissionhandler/r$g;->a(Z)V

    return-void

    .line 52
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No permissions found in manifest for: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no need to show request rationale"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    invoke-interface {p3, v0}, Lcom/baseflow/permissionhandler/r$g;->a(Z)V

    return-void

    .line 55
    :cond_2
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/r$g;->a(Z)V

    return-void
.end method

.method a(ILandroid/content/Context;Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$c;Lcom/baseflow/permissionhandler/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/baseflow/permissionhandler/r;->a(ILandroid/content/Context;Landroid/app/Activity;)I

    move-result p1

    invoke-interface {p4, p1}, Lcom/baseflow/permissionhandler/r$c;->a(I)V

    return-void
.end method

.method public synthetic a(Lcom/baseflow/permissionhandler/r$f;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/r;->a:Z

    .line 32
    invoke-interface {p1, p2}, Lcom/baseflow/permissionhandler/r$f;->a(Ljava/util/Map;)V

    return-void
.end method

.method a(Ljava/util/List;Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$a;Lcom/baseflow/permissionhandler/r$d;Lcom/baseflow/permissionhandler/r$f;Lcom/baseflow/permissionhandler/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/baseflow/permissionhandler/r$a;",
            "Lcom/baseflow/permissionhandler/r$d;",
            "Lcom/baseflow/permissionhandler/r$f;",
            "Lcom/baseflow/permissionhandler/o;",
            ")V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/baseflow/permissionhandler/r;->a:Z

    const-string v1, "PermissionHandler.PermissionManager"

    if-eqz v0, :cond_0

    const-string p1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 3
    invoke-interface {p6, v1, p1}, Lcom/baseflow/permissionhandler/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "Unable to detect current Android Activity."

    .line 4
    invoke-interface {p6, v1, p1}, Lcom/baseflow/permissionhandler/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p2, p2}, Lcom/baseflow/permissionhandler/r;->a(ILandroid/content/Context;Landroid/app/Activity;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 9
    invoke-interface {p6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/baseflow/permissionhandler/s;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_5

    .line 14
    new-instance v1, Lcom/baseflow/permissionhandler/r$b;

    invoke-direct {v1, p5}, Lcom/baseflow/permissionhandler/r$b;-><init>(Lcom/baseflow/permissionhandler/r$f;)V

    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/r$a;->a(Lg/a/c/a/m$a;)V

    .line 15
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x568da1

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 21
    :cond_6
    :goto_1
    invoke-interface {p6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 25
    new-instance p1, Lcom/baseflow/permissionhandler/r$e;

    new-instance v0, Lcom/baseflow/permissionhandler/f;

    invoke-direct {v0, p0, p5}, Lcom/baseflow/permissionhandler/f;-><init>(Lcom/baseflow/permissionhandler/r;Lcom/baseflow/permissionhandler/r$f;)V

    invoke-direct {p1, p2, p6, v0}, Lcom/baseflow/permissionhandler/r$e;-><init>(Landroid/app/Activity;Ljava/util/Map;Lcom/baseflow/permissionhandler/r$f;)V

    invoke-interface {p4, p1}, Lcom/baseflow/permissionhandler/r$d;->a(Lg/a/c/a/m$e;)V

    .line 26
    iput-boolean v2, p0, Lcom/baseflow/permissionhandler/r;->a:Z

    const/16 p1, 0x18

    .line 27
    invoke-static {p2, p3, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 28
    :cond_8
    iput-boolean p1, p0, Lcom/baseflow/permissionhandler/r;->a:Z

    .line 29
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 30
    invoke-interface {p5, p6}, Lcom/baseflow/permissionhandler/r$f;->a(Ljava/util/Map;)V

    :cond_9
    :goto_2
    return-void
.end method
