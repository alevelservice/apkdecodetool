.class public abstract Le/b/b/a/a/d/a/b;
.super Ljava/lang/Object;
.source "Appender.java"


# instance fields
.field protected a:Le/b/b/a/a/a/d;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Z

.field protected g:Z


# direct methods
.method public constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/d/a/b;->a:Le/b/b/a/a/a/d;

    .line 3
    invoke-interface {p1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/f;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/b/b/a/a/d/a/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/File;
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method
