.class public final synthetic Le/d/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lg/c/a/e/d;


# instance fields
.field private final synthetic a:Le/d/a/d;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lg/a/c/a/k$d;


# direct methods
.method public synthetic constructor <init>(Le/d/a/d;Landroid/content/Context;Lg/a/c/a/k$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/b;->a:Le/d/a/d;

    iput-object p2, p0, Le/d/a/b;->b:Landroid/content/Context;

    iput-object p3, p0, Le/d/a/b;->c:Lg/a/c/a/k$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le/d/a/b;->a:Le/d/a/d;

    iget-object v1, p0, Le/d/a/b;->b:Landroid/content/Context;

    iget-object v2, p0, Le/d/a/b;->c:Lg/a/c/a/k$d;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Le/d/a/d;->a(Landroid/content/Context;Lg/a/c/a/k$d;Ljava/lang/String;)V

    return-void
.end method
