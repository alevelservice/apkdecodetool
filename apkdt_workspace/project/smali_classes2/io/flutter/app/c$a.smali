.class Lio/flutter/app/c$a;
.super Ljava/lang/Object;
.source "FlutterPluginRegistry.java"

# interfaces
.implements Lg/a/c/a/m$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lio/flutter/app/c;


# direct methods
.method constructor <init>(Lio/flutter/app/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->b(Lio/flutter/app/c;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a(Lg/a/c/a/m$a;)Lg/a/c/a/m$d;
    .locals 1

    .line 4
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->f(Lio/flutter/app/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lg/a/c/a/m$b;)Lg/a/c/a/m$d;
    .locals 1

    .line 5
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->g(Lio/flutter/app/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lg/a/c/a/m$e;)Lg/a/c/a/m$d;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->e(Lio/flutter/app/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lio/flutter/view/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->a(Lio/flutter/app/c;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->a(Lio/flutter/app/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->a(Lio/flutter/app/c;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->b(Lio/flutter/app/c;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Lg/a/c/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->c(Lio/flutter/app/c;)Lio/flutter/view/e;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/flutter/plugin/platform/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c$a;->e:Lio/flutter/app/c;

    invoke-static {v0}, Lio/flutter/app/c;->d(Lio/flutter/app/c;)Lio/flutter/plugin/platform/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->g()Lio/flutter/plugin/platform/h;

    move-result-object v0

    return-object v0
.end method
