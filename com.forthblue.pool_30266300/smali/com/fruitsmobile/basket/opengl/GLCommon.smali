.class public interface abstract Lcom/fruitsmobile/basket/opengl/GLCommon;
.super Ljava/lang/Object;
.source "GLCommon.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;


# static fields
.field public static final GL_LINEAR:I = 0x2601

.field public static final GL_LINEAR_MIPMAP_LINEAR:I = 0x2703

.field public static final GL_LINEAR_MIPMAP_NEAREST:I = 0x2701

.field public static final GL_NEAREST:I = 0x2600

.field public static final GL_NEAREST_MIPMAP_LINEAR:I = 0x2702

.field public static final GL_NEAREST_MIPMAP_NEAREST:I = 0x2700

.field public static final GL_TEXTURE_2D:I = 0xde1

.field public static final GL_TEXTURE_MAG_FILTER:I = 0x2800

.field public static final GL_TEXTURE_MIN_FILTER:I = 0x2801


# virtual methods
.method public abstract bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V
.end method

.method public abstract glActiveTexture(I)V
.end method

.method public abstract glBindTexture(II)V
.end method

.method public abstract glBlendFunc(II)V
.end method

.method public abstract glClear(I)V
.end method

.method public abstract glClearColor(FFFF)V
.end method

.method public abstract glClearColorx(IIII)V
.end method

.method public abstract glClearDepthf(F)V
.end method

.method public abstract glClearStencil(I)V
.end method

.method public abstract glColorMask(ZZZZ)V
.end method

.method public abstract glCopyTexImage2D(IIIIIIII)V
.end method

.method public abstract glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public abstract glCullFace(I)V
.end method

.method public abstract glDeleteTexture(I)V
.end method

.method public abstract glDepthFunc(I)V
.end method

.method public abstract glDepthMask(Z)V
.end method

.method public abstract glDepthRangef(FF)V
.end method

.method public abstract glDisable(I)V
.end method

.method public abstract glDrawArrays(III)V
.end method

.method public abstract glEnable(I)V
.end method

.method public abstract glFinish()V
.end method

.method public abstract glFlush()V
.end method

.method public abstract glFrontFace(I)V
.end method

.method public abstract glGenTexture()I
.end method

.method public abstract glGetError()I
.end method

.method public abstract glGetString(I)Ljava/lang/String;
.end method

.method public abstract glHint(II)V
.end method

.method public abstract glLineWidth(F)V
.end method

.method public abstract glPixelStorei(II)V
.end method

.method public abstract glPolygonOffset(FF)V
.end method

.method public abstract glScissor(IIII)V
.end method

.method public abstract glStencilFunc(III)V
.end method

.method public abstract glStencilMask(I)V
.end method

.method public abstract glStencilOp(III)V
.end method

.method public abstract glTexParameterf(IIF)V
.end method

.method public abstract glVersion()I
.end method

.method public abstract glViewport(IIII)V
.end method
