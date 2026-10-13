.class public Le/b/b/a/b/b/c;
.super Ljava/lang/Object;
.source "LoggerWrapper.java"


# static fields
.field private static a:Z = false

.field private static b:Le/b/b/a/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/b/b/d;

    invoke-direct {v0}, Le/b/b/a/b/b/d;-><init>()V

    sput-object v0, Le/b/b/a/b/b/c;->b:Le/b/b/a/b/b/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Le/b/b/a/b/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/b/b/a/b/b/c;->b:Le/b/b/a/b/b/a;

    invoke-interface {v0, p0, p1}, Le/b/b/a/b/b/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-boolean v0, Le/b/b/a/b/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Le/b/b/a/b/b/c;->b:Le/b/b/a/b/b/a;

    invoke-interface {v0, p0, p1, p2}, Le/b/b/a/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Le/b/b/a/b/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/b/b/a/b/b/c;->b:Le/b/b/a/b/b/a;

    invoke-interface {v0, p0, p1}, Le/b/b/a/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
