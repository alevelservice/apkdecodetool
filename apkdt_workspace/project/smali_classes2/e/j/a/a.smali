.class public Le/j/a/a;
.super Ljava/lang/Object;
.source "LaunchReviewPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private final e:Lg/a/c/a/m$d;


# direct methods
.method private constructor <init>(Lg/a/c/a/m$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/j/a/a;->e:Lg/a/c/a/m$d;

    return-void
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 3

    .line 1
    new-instance v0, Lg/a/c/a/k;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v1

    const-string v2, "launch_review"

    invoke-direct {v0, v1, v2}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/j/a/a;

    invoke-direct {v1, p0}, Le/j/a/a;-><init>(Lg/a/c/a/m$d;)V

    .line 3
    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 1
    iget-object v1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android_id"

    .line 2
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/j/a/a;->e:Lg/a/c/a/m$d;

    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/j/a/a;->e:Lg/a/c/a/m$d;

    invoke-interface {v1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object v1, p0, Le/j/a/a;->e:Lg/a/c/a/m$d;

    invoke-interface {v1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    :goto_1
    return-void
.end method
