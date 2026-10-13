.class Le/n/a/c$e;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->m(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/j;

.field final synthetic f:Le/n/a/c$i;

.field final synthetic g:Le/n/a/a;

.field final synthetic h:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$e;->h:Le/n/a/c;

    iput-object p2, p0, Le/n/a/c$e;->e:Lg/a/c/a/j;

    iput-object p3, p0, Le/n/a/c$e;->f:Le/n/a/c$i;

    iput-object p4, p0, Le/n/a/c$e;->g:Le/n/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Le/n/a/f/e;

    iget-object v1, p0, Le/n/a/c$e;->e:Lg/a/c/a/j;

    iget-object v2, p0, Le/n/a/c$e;->f:Le/n/a/c$i;

    invoke-direct {v0, v1, v2}, Le/n/a/f/e;-><init>(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    .line 2
    iget-object v1, p0, Le/n/a/c$e;->h:Le/n/a/c;

    iget-object v2, p0, Le/n/a/c$e;->g:Le/n/a/a;

    invoke-static {v1, v2, v0}, Le/n/a/c;->d(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z

    return-void
.end method
