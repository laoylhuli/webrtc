/*
 *  Copyright 2017 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#include "modules/video_coding/codecs/test/objc_codec_factory_helper.h"

#import "WebRTC/RTCVideoCodecH264.h"
#include "sdk/objc/Framework/Native/api/video_decoder_factory.h"
#include "sdk/objc/Framework/Native/api/video_encoder_factory.h"

namespace webrtc {
namespace test {

std::unique_ptr<VideoEncoderFactory> CreateObjCEncoderFactory() {
  return ObjCToNativeVideoEncoderFactory([[RTCVideoEncoderFactoryH264 alloc] init]);
}

std::unique_ptr<VideoDecoderFactory> CreateObjCDecoderFactory() {
  return ObjCToNativeVideoDecoderFactory([[RTCVideoDecoderFactoryH264 alloc] init]);
}

}  // namespace test
}  // namespace webrtc
