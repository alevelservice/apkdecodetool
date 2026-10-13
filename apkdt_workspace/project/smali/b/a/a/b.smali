.class Lb/a/a/b;
.super Ljava/lang/Object;
.source "InstallReferrerPlugin.java"

# interfaces
.implements Lg/a/c/a/k$d;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/b;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lb/a/a/b;->b:Lg/a/c/a/k$d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lb/a/a/b;->b:Lg/a/c/a/k$d;

    invoke-interface {v0}, Lg/a/c/a/k$d;->a()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb/a/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_launch"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    iget-object v0, p0, Lb/a/a/b;->b:Lg/a/c/a/k$d;

    invoke-interface {v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/a/a/b;->b:Lg/a/c/a/k$d;

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
